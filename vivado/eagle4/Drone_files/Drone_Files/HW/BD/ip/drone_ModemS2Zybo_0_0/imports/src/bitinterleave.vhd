library ieee;
use work.functions.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bitinterleave is
generic (
    interleaverLength: positive := 64800;
    maxRows: positive:= 21600;
    maxCols: positive:= 24;
    maxTwist: integer:= 32;
    doParity: boolean:=true; -- Enable parity interleaving? Set to 0 for S2, 1 for T2 and C2
    doTwist: boolean:=true -- Use column twisting? Set to 0 for S2, 1 for T2 and C2
);
port(
	-- Clock
	clk: in std_logic;

    -- Config signals
    int_numRows: integer range 0 to maxRows; -- This is depended on the blocksize and modulation.
    int_numCols: integer range 0 to maxCols; -- This is depended on the blocksize and modulation.
    int_bypass: std_logic;                   -- The interleaver just passes the data through if this is one
     
    -- Column twist address and data, no delay allowed, use distributed ROM (table is super small anyway))
    col_addr: out integer range 0 to maxCols;
    col_twist: in integer range 0 to maxTwist;

    -- Control signals
    -- This signal should be pulsed before the beginning of a frame
    -- to clear the internal state of the block
    in_frame_start: in std_logic;

    -- Interface for reading bits
    in_inputValid: in std_logic;
    in_readyForPreviousBlock: out std_logic;
    in_data: in std_logic;

    -- Interface for writing result bits
    out_outputValid: out std_logic;
    out_nextBlockReady: in std_logic;
    out_data: out std_logic;
    
    -- Control signals from LDPC block
    int_ldpcParityWriting: in std_logic; -- Means that the current output bit is parity
    int_ldpcDone: in std_logic;          -- Done signal from the LDPC, used only in bypass mode (we know ourselves when the parity bits are done)

    -- Signal indicating that we are done
    out_interleaveDone: out std_logic
);
end bitinterleave;  

architecture bitinterleave_arch of bitinterleave is
    -- FSM state
    type INT_STATE_TYPE is (WAITSTART, PREPARING, READING_IN_DATA, COOLDOWN, WRITING_OUT);
    signal int_state: INT_STATE_TYPE := WAITSTART;

    signal int_writeIndex: integer range 0 to interleaverLength-1;
    signal int_writeIndexRAM: integer range 0 to interleaverLength-1;
    signal int_writeIndexLimit: integer range 0 to interleaverLength+maxRows;
    
    signal col_addrCounter: integer range 0 to maxCols;
    signal col_tc: integer range 0 to maxTwist;

    signal parity_firstAddr: integer range 0 to interleaverLength-1;
    signal parity_firstCol: integer range 0 to maxCols-1;
    signal parity_firstWriteIndexLimit: integer range 0 to interleaverLength+maxRows;
    signal parity_counter360: integer range 0 to 359; 
    signal int_ldpcParityWritingActive: std_logic;

    signal writeOut_index: integer range 0 to interleaverLength-1;
    signal writeOut_dataReady: std_logic;
    signal writeOut_memoryValid: std_logic_vector(1 downto 0);
    signal writeOut_memoryEnd: std_logic_vector(1 downto 0) := (others=>'0');
    signal writeOut_bufferReg2: std_logic_vector(1 downto 0) := (others=>'0'); --Containts both the data bit and the done signal
    signal writeOut_bufferReg1: std_logic_vector(1 downto 0) := (others=>'0');
    signal writeOut_bufferReg1Valid: std_logic;

    signal writeOut_colAddr: integer range 0 to maxCols;
    signal writeOut_rowAddr: integer range 0 to maxRows;
    signal writeOut_prevAddr: integer range 0 to interleaverLength-1;
  
    signal int_memoryOut: std_logic_vector(1 downto 0);
    signal memory_write: std_logic;
    signal memory_address: integer range 0 to interleaverLength-1;
    signal memory_in: std_logic;
begin

    interleaver_ram_inst: entity work.infer_ramSinglePort generic map ( dataWidth => 1,
                                                                        memSize => interleaverLength)
                                                          port map ( clk => clk,
                                                                     port1_write => memory_write,
                                                                     port1_address => memory_address,
                                                                     port1_dataIn(0) => memory_in,
                                                                     port1_dataOut(0) => int_memoryOut(1));
                                                                            
    intFSM: process (clk)
        variable writeOut_index_work: integer range 0 to interleaverLength-1;
        variable writeOut_incrementAddress: std_logic;
        variable writeOut_outputBit: std_logic_vector(1 downto 0);
        variable writeOut_firstRun: std_logic;
        variable writeOut_memoryWaiting: std_logic;
        variable int_writeIndex_work: integer range 0 to interleaverLength+maxRows;
    begin
        if(rising_edge(clk)) then
            -- The memory needs one CLK to read
            writeOut_memoryEnd(0)<=writeOut_memoryEnd(1);
            writeOut_memoryValid(0)<=writeOut_memoryValid(1);
            writeOut_memoryValid(1)<='0';

            case int_state is
                when PREPARING =>
                    writeOut_index<=0;
                    writeOut_dataReady<='0';
                    writeOut_incrementAddress:='1';
                    writeOut_bufferReg1Valid<='0';
                    writeOut_memoryValid<=(others=>'0');
                    writeOut_memoryEnd<=(others=>'0');
                    writeOut_bufferReg2 <=(others=>'0');
                    writeOut_bufferReg1 <=(others=>'0');
                    writeOut_memoryWaiting:='0';
                    writeOut_firstRun:='1';
                    
                    int_state<=READING_IN_DATA;
                    col_addrCounter <= 1; 
                    col_tc <= 0;          -- The first Tc is always zero

                    int_writeIndex<=0;
                    int_writeIndexLimit<=int_numRows;

                    int_ldpcParityWritingActive<='0';
                    parity_counter360 <= 0;

                    writeOut_rowAddr <= 1;
                    writeOut_colAddr <= 1;

                    writeOut_prevAddr <= 0;
                when READING_IN_DATA =>
                    if(in_inputValid = '1') then
                        -- Received one bit
                        if(int_ldpcParityWriting='1' and doParity=true and int_bypass='0') then
                            if(int_ldpcParityWritingActive='0') then
                                parity_firstAddr <= int_writeIndex;
                                parity_firstCol <= col_addrCounter;
                                parity_firstWriteIndexLimit <= int_writeIndexLimit;
                                int_ldpcParityWritingActive<='1';
                            end if;
                            int_writeIndex_work:=int_writeIndex+360;
                        else
                            int_writeIndex_work:=int_writeIndex+1;
                        end if;

                        if(int_writeIndex_work>= int_writeIndexLimit) then
                            int_writeIndexLimit <= int_writeIndexLimit + int_numRows;
                            -- Lookup new twist value
                            if(int_bypass='0') then
                                col_tc <= col_twist;
                            else
                                col_tc <= 0;
                            end if;
                            if(col_addrCounter = int_numCols) then
                                if(int_ldpcParityWritingActive ='1' and doParity=true) then --Test for doParity not logically necessary, but improves synthesis in no parity case
                                    -- Did we write all the parity bits?
                                    if(parity_counter360 = 359) then
                                        int_state <= COOLDOWN;
                                        int_writeIndex_work := 0;
                                    else
                                        int_writeIndex_work := parity_firstAddr + 1;
                                        parity_firstAddr <= parity_firstAddr +1;
                                        int_writeIndexLimit <= parity_firstWriteIndexLimit;
                                        col_addrCounter <= parity_firstCol;
                                        --It is possible that due to incrementing the first address the first column also changes
                                        if(parity_firstAddr + 1 = parity_firstWriteIndexLimit) then
                                            parity_firstWriteIndexLimit <= parity_firstWriteIndexLimit + int_numRows;
                                            int_writeIndexLimit <= parity_firstWriteIndexLimit + int_numRows;
                                            col_addrCounter <= parity_firstCol + 1;
                                            parity_firstCol <= parity_firstCol + 1;
                                            --report "Shifting: " & Integer'Image(parity_firstAddr);
                                        end if;
                                        
                                        parity_counter360 <= parity_counter360+1;
                                    end if;
                                else
                                    -- If not parity interleaving we are done now
                                    int_state <= COOLDOWN;
                                    int_writeIndex_work := 0;
                                end if;
                            else
                                col_addrCounter <= col_addrCounter+1;
                            end if;
                        end if;
                        int_writeIndex <= int_writeIndex_work;
                    end if;

                when COOLDOWN =>
                    int_state <= WRITING_OUT;

                when WRITING_OUT =>
                    if(writeOut_memoryValid(0)='1') then
                        writeOut_memoryWaiting:='1';
                    end if;
                    if(writeOut_bufferReg1Valid='0' and writeOut_memoryWaiting='1') then
                        writeOut_bufferReg1Valid <='1'; 
                        writeOut_memoryWaiting:='0';
                        writeOut_bufferReg1<= int_memoryOut;
                    end if;
                    if(writeOut_firstRun = '1' or (writeOut_dataReady='1' and out_nextBlockReady='1')) then
                        if(writeOut_bufferReg1Valid='1') then
                            writeOut_outputBit := writeOut_bufferReg1;
                            if(writeOut_memoryWaiting='1')then
                                writeOut_bufferReg1<= int_memoryOut;
                                writeOut_memoryWaiting:='0';
                            else
                                writeOut_bufferReg1Valid<='0';
                            end if;
                        else
                            writeOut_bufferReg1Valid<='0';
                            writeOut_outputBit := int_memoryOut;
                        end if;
                        writeOut_bufferReg2 <= writeOut_outputBit;
                        -- We are reading Reg1, so we should get new data from the memory to fill Reg1 with
                        writeOut_incrementAddress:='1';
                    end if;
    
                    if(writeOut_incrementAddress='1') then
                        if(writeOut_firstRun='1') then
                            writeOut_firstRun:='0';
                        else
                            writeOut_incrementAddress:='0';
                            writeOut_dataReady<='1';
                        end if;

                        -- Calculate memory address. Here we just read out col oriented, unless when bypassing, then we do it row oriented
                        writeOut_index_work:=writeOut_index;
                        if(writeOut_colAddr +1 = int_numCols and writeOut_rowAddr = int_numRows) then
                            writeOut_memoryEnd(1)<='1';
                        end if;
                        if(writeOut_colAddr = int_numCols) then
                            writeOut_prevAddr <= writeOut_prevAddr + 1;
                            if(int_bypass='0') then
                                writeOut_index_work := writeOut_prevAddr + 1;
                            else
                                if(writeOut_index_work /= interleaverLength-1) then
                                    writeOut_index_work := writeOut_index_work + 1;
                                end if;
                            end if;
                            writeOut_colAddr <= 1;
                            if(writeOut_rowAddr /= int_numRows) then
                                writeOut_rowAddr <= writeOut_rowAddr +1;
                            end if;
                        else
                            writeOut_colAddr <= writeOut_colAddr + 1;
                            if(int_bypass='0') then
                                writeOut_index_work := writeOut_index_work + int_numRows;
                            else
                                if(writeOut_index_work /= interleaverLength-1) then
                                    writeOut_index_work := writeOut_index_work + 1; 
                                end if;
                            end if;
                        end if;
                        writeOut_index<=writeOut_index_work;
                        --

                        writeOut_memoryValid(1)<='1';
                    end if;
                    if(writeOut_bufferReg2(0)='1' and writeOut_dataReady='1' and out_nextBlockReady='1') then
                        writeOut_dataReady<='0';
                        int_state<=WAITSTART;
                    end if;

                when WAITSTART =>
                    -- Do nothing
            end case;
            if(in_frame_start = '1') then
                int_state <= PREPARING;
            end if;
        end if;
    end process;

    nextColProcess: process (col_addrCounter, int_numCols, parity_firstCol, parity_firstAddr, parity_firstWriteIndexLimit, int_bypass)
    begin
            col_addr <= col_addrCounter;
            if(int_numCols > 0 and int_bypass ='0' and col_addrCounter = int_numCols and doParity=true) then
                col_addr <= parity_firstCol-1; -- The value is delayed by one row, so request one row earlier
                if(parity_firstAddr + 1 = parity_firstWriteIndexLimit) then 
                    col_addr <= parity_firstCol;
                end if;
            end if;

    end process;

    memory_in <= in_data;

    memory_write <= in_inputValid when int_state = READING_IN_DATA else
                    '0';

    memory_address <= int_writeIndexRAM when int_state = READING_IN_DATA else
                      writeOut_index;

    -- Properly delay end signal
    int_memoryOut(0) <= writeOut_memoryEnd(0);

    in_readyForPreviousBlock <= '1' when int_state = READING_IN_DATA else 
                                '0';

    twistGen: if(doTwist = true) generate
        int_writeIndexRAM <= WRAP_INTEGER(int_writeIndex + col_tc, int_writeIndexLimit, int_numRows);
    end generate;
    noTwistGen: if(doTwist = false) generate
        int_writeIndexRAM <= int_writeIndex;
    end generate;


    out_outputValid <= writeOut_dataReady;
    out_data <= writeOut_bufferReg2(1);
    out_interleaveDone <= writeOut_bufferReg2(0);

end bitinterleave_arch;

