library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bit2cell is
generic(
    numCellRegs: positive := 2; --Two works as a small buffer speeding the chain up.
    outputWidth: positive := 8;
    doGrouped: boolean := true
);
port(
    -- Clock
    clk: in std_logic;

    -- Control signals
    -- This signal should be pulsed before the beginning of a frame
    -- to clear the internal state of the block
    in_frame_start: in std_logic;
    -- How many bits should be grouped
    cell_numberOfBits: in integer range 0 to outputWidth;
    -- Do we group one or two cells?
    cell_groupedByTwo: in std_logic;

    -- Interface for reading bits
    in_inputValid: in std_logic;
    in_readyForPreviousBlock: out std_logic;
    in_data: in std_logic;

    -- Interface for writing result bits
    out_outputValid: out std_logic;
    out_nextBlockReady: in std_logic;
    out_data: out std_logic_vector(outputWidth-1 downto 0);

    -- Permutation LUT
    lut_bitIndex: out integer range 0 to outputWidth-1;
    lut_bitPermutedIndex: in integer range 0 to outputWidth-1;

    -- Done signal delayed by the buffer length
    done_in: in std_logic;
    done_out: out std_logic
);
end bit2cell;

architecture bit2cell_arch of bit2cell is
    type CELL_BUFFER_TYPE is array (0 to numCellRegs-1) of std_logic_vector(outputWidth-1 downto 0);
    signal cell_bufferRegs: CELL_BUFFER_TYPE;
    signal cell_bufferWriteIndex: integer range 0 to numCellRegs-1;
    signal cell_bufferOutputIndex: integer range 0 to numCellRegs-1;

    signal cell_bufferStalled: std_logic;
    signal cell_bufferBitsLoaded: integer range 0 to outputWidth;
    signal cell_outputting: integer range 0 to numCellRegs;
    signal cell_outputCurrentGroup: std_logic;

    signal done_delayChain: std_logic_vector(numCellRegs-1 downto 0);
begin  

    cellProc: process(clk)
        variable tmpOutputting: integer range 0 to numCellRegs;
    begin
        if(rising_edge(clk)) then
            if(in_frame_start='1') then
                cell_bufferWriteIndex <= 0;
                cell_bufferBitsLoaded <= 0;
                cell_outputting <= 0;
                done_delayChain <= (others=>'0');
                cell_outputCurrentGroup<='1';
            else
                tmpOutputting := cell_outputting;

                if(cell_bufferStalled='0' and in_inputValid='1') then
                    if(cell_bufferBitsLoaded = 0) then
                        cell_bufferRegs(cell_bufferWriteIndex) <= (others=>'0');
                    end if;
                    cell_bufferRegs(cell_bufferWriteIndex)(cell_numberOfBits - lut_bitPermutedIndex - 1) <= in_data;
                    if(cell_bufferBitsLoaded = cell_numberOfBits-1) then
                        if(cell_bufferWriteIndex = numCellRegs-1) then
                            cell_bufferWriteIndex<=0;
                        else
                            cell_bufferWriteIndex<=cell_bufferWriteIndex+1;
                        end if;

                        done_delayChain(cell_bufferWriteIndex) <= done_in;

                        cell_bufferBitsLoaded <= 0;
                        tmpOutputting := tmpOutputting + 1;
                    else
                        cell_bufferBitsLoaded<=cell_bufferBitsLoaded+1;
                    end if;
                end if;
                if(cell_outputting > 0 and out_nextBlockReady = '1') then
                    if(cell_groupedByTwo ='0' or cell_outputCurrentGroup='0') then
                        tmpOutputting := tmpOutputting -1;
                        if(cell_bufferOutputIndex = numCellRegs-1) then
                            cell_bufferOutputIndex <= 0;
                        else
                            cell_bufferOutputIndex <= cell_bufferOutputIndex+1;
                        end if;
                        cell_outputCurrentGroup<='1';
                    else
                        cell_outputCurrentGroup<='0';
                    end if;
                end if;

                cell_outputting <= tmpOutputting;
            end if;
        end if;
    end process;

    lut_bitIndex <= cell_bufferBitsLoaded;

    out_outputValid <= '1' when cell_outputting>0 else
                       '0';

    outputGen: if doGrouped generate
        outputProc: process(cell_bufferOutputIndex, cell_bufferRegs, cell_outputCurrentGroup, cell_groupedByTwo, done_delayChain, cell_numberOfBits)
        begin
            -- Depending on the value of cell_numberOfBits the desired bits are extracted.
            out_data <= (others=>'0');
            if(cell_groupedByTwo='0') then
                out_data <= cell_bufferRegs(cell_bufferOutputIndex);
                done_out <= done_delayChain(cell_bufferOutputIndex);
            elsif(cell_outputCurrentGroup='0') then
                -- This code is inefficient. It generates the selector for all possible cell_numberOfBits. Possible group widths are: 2 (QPSK) 4 (16QAM), 6 (64QAM), 8 (256QAM) and 10 (1024QAM, DVB-C2 only)
                -- Also, some tools don't like double variable indexes... Therefore, you can uncomment the case based system if you like
                case cell_numberOfBits is
                    when 8 => out_data(3 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(3 downto 0);
                    when 12 => out_data(5 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(5 downto 0);
                    when 16 => out_data(7 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(7 downto 0);
                    when others=> out_data(1 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(1 downto 0);
                end case;
--                out_data(cell_numberOfBits/2-1 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(cell_numberOfBits/2-1 downto 0);
                done_out <= done_delayChain(cell_bufferOutputIndex);
            else 
                case cell_numberOfBits is
                    when 8 => out_data(3 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(7 downto 4);
                    when 12 => out_data(5 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(11 downto 6);
                    when 16 => out_data(7 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(15 downto 8);
                    when others=> out_data(1 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(3 downto 2);
                end case;
--                out_data(cell_numberOfBits/2-1 downto 0) <= cell_bufferRegs(cell_bufferOutputIndex)(cell_numberOfBits-1 downto cell_numberOfBits/2);
                done_out <= '0';
            end if;
        end process;
    end generate;
    outputSimpleGen: if not doGrouped generate
        out_data <= cell_bufferRegs(cell_bufferOutputIndex);
    end generate;

--    cell_bufferStalled <= '1' when ((cell_bufferWriteIndex = cell_bufferOutputIndex) and cell_outputting>0) else
--                          '0';

    cell_bufferStalled <= '1' when cell_outputting = numCellRegs else '0';

--    cell_outputting    <= '0' when ((cell_bufferWriteIndex = cell_bufferOutputIndex) and cell_outputting='0') and cell_bufferBitsLoaded = 0 else
--                          '1';

    in_readyForPreviousBlock <= not cell_bufferStalled and not in_frame_start;

end bit2cell_arch;
