library ieee;
use work.functions.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ldpc is
generic(
    numBufferRegs: positive := 2;
    coeffMemoryAddrSize: positive := 4096;
    parityMemoryAddrSize: positive := 2048
);
port(
    clk: in std_logic;

    -- Code rate index
    code_rateIndex: integer range 0 to 23;
    -- This signal should be pulsed before the beginning of a frame
    -- to clear the internal state of the block. It can be asserted to reset
    -- the block during a frame, but the next frame will be partially corrupted
    in_frame_start: in std_logic;
    -- Signals the end of the payload+bch
    in_bch_end: in std_logic;

    -- Interface for reading bits
    in_inputValid: in std_logic;
    in_readyForPreviousBlock: out std_logic;
    in_data: in std_logic;

    -- Interface for writing result bits
    out_outputValid: out std_logic;
    out_nextBlockReady: in std_logic;
    out_data: out std_logic;
    out_ldpcDone: out std_logic;
    out_ldpcParityWriting: out std_logic;

    -- Interface to coefficient ROM
    coeff_readAddress: out integer range 0 to coeffMemoryAddrSize-1;
    coeff_data: in std_logic_vector(17 downto 0);

    -- Interface to other FEC blocks
    bch_polynomial: out integer range 0 to 7;
    int_blockSize: out integer range 0 to 3;
    cell_mapperType: out integer range 0 to 7;
    metadata_isValid: out std_logic
);
end ldpc;  

architecture ldpc_arch of ldpc is
    -- A few registers for buffering input data. A single one can work, but two significantly increase throughput
    type INPUT_BUFFER_TYPE is array (0 to numBufferRegs-1) of std_logic_vector(17 downto 0);
    signal input_bufferRegs: INPUT_BUFFER_TYPE;
    signal input_bufferWriteIndex: integer range 0 to numBufferRegs-1;
    signal input_bufferProcessingIndex: integer range 0 to numBufferRegs-1;
    signal input_bufferStartProcessing: std_logic;

    signal input_bufferEmpty: std_logic;
    signal input_bufferStalled: std_logic;
    signal input_bufferBitsLoaded: integer range 0 to 18;

    signal processing_dataBlock: std_logic_vector(17 downto 0);

    type LDPC_STATE_TYPE is (WAITSTART, CONFIG1, CONFIGWAIT, CONFIG2, CONFIG2WAIT, ACCUMULATE, WRITEOUT, PREPARING, COOLDOWN);
    signal ldpc_state: LDPC_STATE_TYPE := WAITSTART;
    
    type LDPC_PROC_STATE_TYPE is (WAITSTART, UPDATEPARITY_READ, UPDATEPARITY_WRITE);
    signal ldpc_procState: LDPC_PROC_STATE_TYPE := WAITSTART;
    
    signal coeff_readAddressOut: integer range 0 to coeffMemoryAddrSize-1;
    signal coeff_blockStartAddress: integer range 0 to coeffMemoryAddrSize-1;
    signal code_rateMapperType: integer range 0 to 7; 
    signal code_ratePoly: integer range 0 to 7;
    signal code_rateBlocksize: integer range 0 to 3;
    signal code_rateLdpcOffset: integer range 0 to 7;

    signal parity_addrIndex: integer range 0 to parityMemoryAddrSize - 1;
    signal parity_addrOffset: integer range 0 to 31; --17  is the highest that can occur during encoding, but when garbage input is applied any value is possible
    signal parity_blockEnd: std_logic;

    signal parity_writeRam: std_logic := '0';
    signal parity_workAddr: integer range 0 to parityMemoryAddrSize - 1;
    signal parity_workAddrNext: integer range 0 to parityMemoryAddrSize - 1;
    signal parity_workAddrBlock: integer range 0 to 135;
    signal parity_maxAddr: integer range 0 to parityMemoryAddrSize - 1;
    signal parity_calculated: std_logic_vector (1 downto 0);
    signal parity_calculatedOld: std_logic;

    signal memory_writeOutBlank: std_logic_vector(17 downto 0);
    signal memory_port2_dataIn: std_logic_vector(17 downto 0);
    signal memory_port2_write: std_logic;
    signal blockXOR_inBlock1: std_logic_vector(17 downto 0);
    signal blockXOR_inBlock2: std_logic_vector(17 downto 0);
    signal blockXOR_outBlock1: std_logic_vector(17 downto 0);
    signal blockXOR_outBlock2: std_logic_vector(17 downto 0);

    signal block_subsProcessed: integer range 0 to 19;
    signal block_subsIncrement: integer range 0 to 19;

    signal accumulate_done: std_logic;

    signal writeOut_index: integer range 0 to parityMemoryAddrSize - 1;
    signal writeOut_indexOld: integer range 0 to parityMemoryAddrSize - 1;
    signal writeOut_dataReady: std_logic;
    signal writeOut_memoryValid: std_logic_vector(1 downto 0);
    signal writeOut_memoryEnd: std_logic_vector(1 downto 0) := (others=>'0');
    signal writeOut_offset: integer range 0 to 17;
    signal writeOut_offsetDelay: integer range 0 to 17;
    signal writeOut_blank: std_logic;
    signal writeOut_bufferReg2: std_logic_vector(1 downto 0) := (others=>'0'); --Containts both the data bit and the done signal
    signal writeOut_bufferReg1: std_logic_vector(1 downto 0) := (others=>'0');
    signal writeOut_bufferReg1Valid: std_logic;
begin

    blockXOR_inst:  entity work.ldpc_blockxor 
                    port map (
                        offset => parity_addrOffset,
                        data_block => processing_dataBlock,
                        
                        in_block1 => blockXOR_inBlock1,
                        in_block2 => blockXOR_inBlock2,
                        out_block1 => blockXOR_outBlock1,
                        out_block2 => blockXOR_outBlock2);
    
    parityRam_inst: entity work.infer_ramDualPort
                    generic map (
                            dataWidth => 18,
                            memSize => parityMemoryAddrSize)
                    port map (
                            clk => clk,
                            port1_write => parity_writeRam,
                            port2_write => memory_port2_write, 
                            port1_address => parity_workAddr,
                            port2_address => parity_workAddrNext,
                            port1_dataIn => blockXOR_outBlock1,
                            port2_dataIn => memory_port2_dataIn,
                            port1_dataOut => blockXOR_inBlock1,
                            port2_dataOut => blockXOR_inBlock2);

    ldpcFSM: process(clk)
    begin
        if(rising_edge(clk)) then
        --    writeOut_dataReady<='0';
            case ldpc_state is
                when PREPARING =>
                    if(in_frame_start='0') then
                        ldpc_state <= CONFIG1;
                    end if;
                when CONFIG1 =>
                    ldpc_state <= CONFIGWAIT;
                when CONFIGWAIT =>
                    ldpc_state <= CONFIG2;
                when CONFIG2 =>
                    ldpc_state <= CONFIG2WAIT;
                when CONFIG2WAIT => -- This state is only here to avoid an integer overflow in simulation (when the memory still has a bad output valid)
                                    -- You could remove it and save one cycle :)
                    ldpc_state <= ACCUMULATE;
                when ACCUMULATE =>
                    if(accumulate_done='1' and input_bufferEmpty='1') then
                        ldpc_state <= COOLDOWN;
                    end if;
                when COOLDOWN =>
                        ldpc_state <= WRITEOUT;
                when WRITEOUT =>
                    if(writeOut_bufferReg2(0)='1' and writeOut_dataReady='1' and out_nextBlockReady='1') then
                        ldpc_state <= WAITSTART;
                    end if;
                when WAITSTART =>        
            end case;
            if(in_frame_start = '1') then
                ldpc_state <= PREPARING;
            end if;
        end if;
    end process;

    inputProc: process(clk)
    begin
        if(rising_edge(clk)) then
            input_bufferStartProcessing <= '0';
            if(ldpc_state = PREPARING) then
                input_bufferWriteIndex <= 0;
                input_bufferBitsLoaded <= 0;
                accumulate_done <= '0';
            end if;
            if(ldpc_state = ACCUMULATE) then
                -- Verify if a valid bit is waiting
                if(input_bufferStalled='0' and in_inputValid='1') then
                    if(in_bch_end='1') then
                        accumulate_done <= '1';
                    end if;
                    input_bufferRegs(input_bufferWriteIndex) <= input_bufferRegs(input_bufferWriteIndex)(16 downto 0)&in_data;
                    if(input_bufferBitsLoaded = 17) then
                        if(input_bufferWriteIndex = numBufferRegs-1) then
                            input_bufferWriteIndex<=0;
                        else
                            input_bufferWriteIndex<=input_bufferWriteIndex+1;
                        end if;
                        input_bufferStartProcessing <= '1';
                        input_bufferBitsLoaded <= 0;
                    else
                        input_bufferBitsLoaded<=input_bufferBitsLoaded+1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    ldpcProc: process(clk)
        variable input_bufferProcessingIndex_work: integer range 0 to numBufferRegs-1;
    begin
        if(rising_edge(clk)) then
            input_bufferProcessingIndex_work:=input_bufferProcessingIndex;
            if(ldpc_state = PREPARING) then
                input_bufferProcessingIndex_work := 0;
                ldpc_procState <= WAITSTART;
            end if;
            if(input_bufferStartProcessing='1') then
                ldpc_procState <= UPDATEPARITY_READ;
            end if;

            case ldpc_procState is
                when UPDATEPARITY_WRITE =>
                    -- Just a delay for letting the blockram do its thing
                    ldpc_procState <= UPDATEPARITY_READ;
                    if(parity_blockEnd = '1') then
                        -- Operation done
                        if(input_bufferProcessingIndex_work = numBufferRegs-1) then
                            input_bufferProcessingIndex_work:=0;
                        else
                            input_bufferProcessingIndex_work:=input_bufferProcessingIndex_work+1;
                        end if;
                        if(input_bufferWriteIndex = input_bufferProcessingIndex_work) then
                            ldpc_procState<=WAITSTART;
                        end if;
                    end if;
                when UPDATEPARITY_READ =>
                    ldpc_procState <= UPDATEPARITY_WRITE;
                when others =>
            end case;

            input_bufferProcessingIndex<=input_bufferProcessingIndex_work;
        end if;
    end process;

    tableRomProc: process(clk)
        variable tmpAddr: integer range 0 to coeffMemoryAddrSize-1;
    begin
        if(rising_edge(clk)) then
            metadata_isValid <= '0';
            case ldpc_state is
                when PREPARING =>
                    coeff_readAddressOut <= code_rateIndex * 2;
                    block_subsProcessed <= 0;
                when CONFIG1 =>
                    code_rateMapperType <= to_integer(unsigned(coeff_data(2 downto 0)));
                    parity_maxAddr <= to_integer(unsigned(std_logic_vector'(coeff_data(17 downto 8) & "00")));
                    coeff_readAddressOut <= coeff_readAddressOut + 1; 
                when CONFIG2 =>
                    code_ratePoly <= to_integer(unsigned(coeff_data(12 downto 10)));
                    code_rateBlocksize <= to_integer(unsigned(coeff_data(14 downto 13)));
                    code_rateLdpcOffset <= to_integer(unsigned(coeff_data(17 downto 15)));
                
                    tmpAddr := to_integer(unsigned(std_logic_vector'(coeff_data(9 downto 0) & "000")));
                    coeff_readAddressOut <= tmpAddr;
                    coeff_blockStartAddress <= tmpAddr;
                    metadata_isValid <= '1';
                when others =>
                    if(ldpc_procState = UPDATEPARITY_READ) then 
                        if(coeff_readAddressOut /= coeffMemoryAddrSize-1) then -- Avoid integer overflow in simulation
	                        tmpAddr := coeff_readAddressOut + 1;
			else
				tmpAddr := 0;
			end if;
                        coeff_readAddressOut <= tmpAddr;

                        if(parity_blockEnd = '1') then
                            if(block_subsProcessed = 19) then
                                -- Advance to next coefficients
                                coeff_blockStartAddress <= tmpAddr;
                                -- Reset counter
                                block_subsProcessed <= 0;
                            else    
                                -- Go back to start of parity block
                                coeff_readAddressOut <= coeff_blockStartAddress;
                                block_subsProcessed <= block_subsProcessed + 1;
                            end if;
                        end if;
                    end if;
            end case;
            block_subsIncrement <= block_subsProcessed;
        end if;
    end process;

    outProc: process(clk)
        variable writeOut_index_work: integer range 0 to parityMemoryAddrSize - 1;
        variable writeOut_incrementAddress: std_logic;
        variable writeOut_outputBit: std_logic_vector(1 downto 0);
        variable tmp: std_logic;
        variable writeOut_memoryWaiting: std_logic;
    begin
        if(rising_edge(clk)) then
            -- The memory needs one CLK to read
            writeOut_memoryEnd(0)<=writeOut_memoryEnd(1);
            writeOut_memoryValid(0)<=writeOut_memoryValid(1);
            writeOut_memoryValid(1)<='0';
            -- Delay the offset to match
            writeOut_offsetDelay<=writeOut_offset;

            -- Used for erasing memory, the address we read, and will now write
            writeOut_indexOld <= writeOut_index;
            writeOut_blank<='0';

            case ldpc_state is
                when WRITEOUT =>
                    if(writeOut_memoryValid(0)='1') then
                        writeOut_memoryWaiting:='1';
                    end if;
                    if(writeOut_bufferReg1Valid='0' and writeOut_memoryWaiting='1') then
                        writeOut_bufferReg1Valid <='1'; 
                        writeOut_memoryWaiting:='0';
                        writeOut_bufferReg1<= parity_calculated;
                    end if;
                    if(tmp = '1' or (writeOut_dataReady='1' and out_nextBlockReady='1')) then
                        if(writeOut_bufferReg1Valid='1') then
                            writeOut_outputBit := writeOut_bufferReg1;
                            if(writeOut_memoryWaiting='1')then
                                writeOut_bufferReg1<= parity_calculated;
                                writeOut_memoryWaiting:='0';
                            else
                                writeOut_bufferReg1Valid<='0';
                            end if;
                        else
                            writeOut_bufferReg1Valid<='0';
                            writeOut_outputBit := parity_calculated;
                        end if;
                        writeOut_bufferReg2 <= writeOut_outputBit;
                        -- We are reading Reg1, so we should get new data from the memory to fill Reg1 with
                        writeOut_incrementAddress:='1';
                    end if;
    
                    if(writeOut_incrementAddress='1') then
                        if(tmp='1') then
                            tmp:='0';
                        else
                            writeOut_incrementAddress:='0';
                            writeOut_dataReady<='1';
                        end if;
                        writeOut_index_work:=writeOut_index;
                        writeOut_index_work:=writeOut_index_work+20;
                        if(writeOut_index_work=parity_maxAddr-1) then
                            if(writeOut_offset=0) then
                                writeOut_memoryEnd(1)<='1';
                            end if;
                        end if;
                        writeOut_memoryValid(1)<='1';
                        if(writeOut_index_work>=parity_maxAddr) then
                            writeOut_index_work:=writeOut_index_work-parity_maxAddr;
                            if(writeOut_offset=0) then
                                writeOut_offset<=17;
                                writeOut_index_work:=writeOut_index_work+1;
                            else    
                                writeOut_offset<=writeOut_offset-1;
                            end if;
                        end if;
                        writeOut_index<=writeOut_index_work;
                        writeOut_blank <= '1'; --Erase the parity bit we will read (to make the memory zero again)
                    end if;
                    if(writeOut_bufferReg2(0)='1' and writeOut_dataReady='1' and out_nextBlockReady='1') then
                        writeOut_dataReady<='0';
                    end if;
                when others =>
                    writeOut_offset<=17;
                    writeOut_index<=0;
                    writeOut_dataReady<='0';
                    writeOut_incrementAddress:='1';
                    writeOut_bufferReg1Valid<='0';
                    writeOut_bufferReg2 <= (others=>'0');
                    writeOut_bufferReg1 <= (others=>'0');
                    writeOut_memoryValid<=(others=>'0');
                    writeOut_memoryEnd<=(others=>'0');
                    writeOut_memoryWaiting:='0';
                    tmp:='1';
            end case;
        end if;
    end process;

    parityProc: process(clk)
    begin
        if(rising_edge(clk)) then
            if(writeOut_dataReady='1' and out_nextBlockReady='1') then
                parity_calculatedOld <= writeOut_bufferReg2(1) xor parity_calculatedOld;
            end if;
            if(ldpc_state = PREPARING) then
                parity_calculatedOld <= '0';
            end if;
        end if;
    end process;

    processing_dataBlock <= input_bufferRegs(input_bufferProcessingIndex);

    input_bufferStalled <= '1' when (accumulate_done = '1') or (out_nextBlockReady = '0') or ((input_bufferWriteIndex = input_bufferProcessingIndex)
                                   and (ldpc_procState /= WAITSTART or input_bufferStartProcessing='1'))
                               else '0';
    input_bufferEmpty   <= '1' when ((input_bufferWriteIndex = input_bufferProcessingIndex)
                                   and (ldpc_procState = WAITSTART and input_bufferStartProcessing='0'))
                               else '0';

    in_readyForPreviousBlock <= not input_bufferStalled when (ldpc_state = ACCUMULATE) else '0';

    out_data <= in_data when (ldpc_state = ACCUMULATE) else
                writeOut_bufferReg2(1) xor parity_calculatedOld;

    out_ldpcDone <= writeOut_bufferReg2(0);
    out_outputValid <= (in_inputValid and not input_bufferStalled) when (ldpc_state = ACCUMULATE) else
                       writeOut_dataReady;

    coeff_readAddress <= coeff_readAddressOut;

    -- Extract data from ROM
    -- First two are dynamic
    parityExtractProc: process(coeff_data, code_rateLdpcOffset)
    begin
        case code_rateLdpcOffset is
            when 3 =>
                parity_addrIndex <= to_integer(unsigned(coeff_data(16 downto 8)));
                parity_workAddrBlock <= to_integer(unsigned(coeff_data(7 downto 5)));
            when 4 =>
                parity_addrIndex <= to_integer(unsigned(coeff_data(16 downto 9)));
                parity_workAddrBlock <= to_integer(unsigned(coeff_data(8 downto 5)));
            when 5 =>
                parity_addrIndex <= to_integer(unsigned(coeff_data(16 downto 10)));
                parity_workAddrBlock <= to_integer(unsigned(coeff_data(9 downto 5)));
            when 6 =>
                parity_addrIndex <= to_integer(unsigned(coeff_data(16 downto 11)));
                parity_workAddrBlock <= to_integer(unsigned(coeff_data(10 downto 5)));
            when others =>
                parity_addrIndex <= to_integer(unsigned(coeff_data(16 downto 12)));
                parity_workAddrBlock <= to_integer(unsigned(coeff_data(11 downto 5)));
        end case;
    end process;
    
    parity_addrOffset <= to_integer(unsigned(coeff_data(4 downto 0)));
    
    parity_blockEnd <= coeff_data(17);

    -- Constant multiply with 20 is cheap, 20d=0b10100
    parity_workAddr <= 20*parity_workAddrBlock + WRAP_INTEGER(parity_addrIndex + block_subsIncrement, 20) when (ldpc_state = ACCUMULATE) else writeOut_index;
    parity_workAddrNext <= 20*parity_workAddrBlock + WRAP_INTEGER(parity_addrIndex + block_subsIncrement + 1, 20) when (ldpc_state = ACCUMULATE) else writeOut_indexOld;

    parity_writeRam <= '1' when (ldpc_procState = UPDATEPARITY_WRITE) else '0';

    -- Note: according to page 39 of the standard the parity bits must be XORed with each other.
    parity_calculated <= blockXOR_inBlock1(writeOut_offsetDelay) & writeOut_memoryEnd(0);

    -- Allow zeroing memory
    blankProc: process(blockXOR_inBlock1, writeOut_offsetDelay)
    begin
        memory_writeOutBlank <= blockXOR_inBlock1;
        memory_writeOutBlank(writeOut_offsetDelay) <= '0';
    end process;
    memory_port2_write <= parity_writeRam or writeOut_blank;
    memory_port2_dataIn <= blockXOR_outBlock2 when (ldpc_state = ACCUMULATE) else (memory_writeOutBlank); 

    out_ldpcParityWriting <= '1' when ldpc_state = WRITEOUT else '0';

    bch_polynomial <= code_ratePoly;
    int_blockSize <= code_rateBlocksize;
    cell_mapperType <= code_rateMapperType;
end ldpc_arch;
