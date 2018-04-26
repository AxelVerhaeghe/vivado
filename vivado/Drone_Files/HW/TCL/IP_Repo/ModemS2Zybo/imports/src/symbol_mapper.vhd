library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.sampleType.all;

entity symbol_mapper is
    generic(
        symbolWidth: positive:= 5
    );
    port(
        clk: in std_logic;

        -- Configuration from FEC block
        modcod_mode: in integer range 0 to 3;
        modcod_code: in integer range 0 to 7;

        -- Interface for reading bits
        in_inputValid: in std_logic;
        in_readyForPreviousBlock: out std_logic;
        in_data: in std_logic_vector(symbolWidth-1  downto 0);
        in_postMapR: in std_logic_vector(1 downto 0);

        -- Interface for writing result symbols
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out complexSample

    );
end symbol_mapper;

architecture symbol_mapper_arch of symbol_mapper is
    signal input_ready: std_logic := '1';

    signal memory_reading: std_logic;
    signal memory_outData: complexSample;
    signal memory_outDataPostScramble: complexSample;
    signal memory_outDataReg: complexSample;

    signal memory_postMapR: std_logic_vector(1 downto 0);

    --Local copy of output
    signal out_outputValidLocal : std_logic := '0';
begin

    symbolProc: process(clk)
    begin
        if(rising_edge(clk)) then
            if(out_nextBlockReady = '1' and out_outputValidLocal='1') then
                out_outputValidLocal <= '0';
                input_ready <= '1';
            end if;
    
            if(input_ready='1' and in_inputValid='1') then
                -- The memory has started reading, and will deliver the result on the next clock cycle
                -- The module only work at 50% duty cycle, which is ok, the previous block only delivers symbols at reduced rate
                -- since it has to serialze bits delivered at best once per clock cycle
                input_ready <= '0';
                memory_reading <= '1';
                memory_postMapR <= in_postMapR;
            end if;

            if(memory_reading='1' and out_outputValidLocal='0')then
                memory_reading <= '0';
                memory_outDataReg <= memory_outDataPostScramble;
                out_outputValidLocal <= '1';
            end if; 
        end if;
    end process;

    in_readyForPreviousBlock <= input_ready;
    out_data <= memory_outDataReg;

    out_outputValid <= out_outputValidLocal;

    --TODO: Put constellation magnitude modulation here

    symbolRom_inst: entity work.symbol_map_rom_dvbs2_equal port map( clk => clk,
                                                                     symbol => in_data,
                                                                     mode => modcod_mode,
                                                                     code => modcod_code, 

                                                                     complex => memory_outData
                                                                   );

    -- Some high order modulations need an extra scrambling step
    memory_outDataPostScramble.I <= memory_outData.I when memory_postMapR = "00" else 
                                   -memory_outData.Q when memory_postMapR = "01" else
                                   -memory_outData.I when memory_postMapR = "10" else
                                    memory_outData.Q;
 
    memory_outDataPostScramble.Q <= memory_outData.Q when memory_postMapR = "00" else 
                                    memory_outData.I when memory_postMapR = "01" else
                                   -memory_outData.Q when memory_postMapR = "10" else
                                   -memory_outData.I;
end symbol_mapper_arch;
