library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.sampleType.all;

entity scrambler is
    port(
        clk: in std_logic;

        -- Interface for reading symbols
        in_inputValid: in std_logic;
        in_readyForPreviousBlock: out std_logic;
        in_data: in std_logic_vector(4 downto 0);
        in_mode: in integer range 0 to 3;
        in_scramble: in std_logic; -- Set to one if this is a symbol that should be scrambled (pilot, data)

        -- Interface for writing result symbols
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out std_logic_vector(4 downto 0);
        out_postMapR: out std_logic_vector(1 downto 0)
    );
end scrambler;

architecture scrambler_arch of scrambler is
    signal Xreg: std_logic_vector(17 downto 0);
    signal Yreg: std_logic_vector(17 downto 0);
    signal R: std_logic_vector(1 downto 0);
begin

    lfsr: process(clk)
    begin
        if(rising_edge(clk)) then
            if(in_inputValid = '1' and out_nextBlockReady = '1') then
                Xreg <= (Xreg(0) xor Xreg(7)) & Xreg(17 downto 1);
                Yreg <= (Yreg(10) xor Yreg(7) xor Yreg(5) xor Yreg(0)) & Yreg(17 downto 1);
            end if;
            if(in_scramble='0') then
                -- Reset X and Y reg
                Xreg <= (others=>'0');
                Xreg(0) <= '1';

                Yreg <= (others=>'1');
            end if;
        end if;
    end process;

    in_readyForPreviousBlock <= out_nextBlockReady;
    out_outputValid <= in_inputValid;
    
    R(0) <= Xreg(0) xor Yreg(0);
    R(1) <= (Yreg(5) xor Yreg(6) xor Yreg(8) xor Yreg(9) xor Yreg(10) xor Yreg(11) xor Yreg(12) xor Yreg(13) xor Yreg(14) xor Yreg(15)) xor
            (Xreg(4) xor Xreg(6) xor Xreg(15));
   
    data: process(R, in_data, in_scramble, in_mode)
        variable is8PSK: std_logic := '0';
    begin
        if(in_mode = 1) then
            is8PSK := '1';
        end if;
        -- This is valid for QPSK, 8PSK and 16APSK, could be extended to higher MODCODs but then it is simpler to scramble the I/Q
        -- Constellation magnitude modulation is only possible for QPSK and 8PSK anyway
        out_data <= in_data;
        out_postMapR <= "00";
        if(in_scramble = '1') then
            if(in_mode <= 2) then
                case R is
                    when "01" => out_data(0) <= in_data(1);
                                 out_data(1) <= not in_data(0);
                                 out_data(2) <= in_data(2) xor is8PSK;
                    when "10" => out_data(1 downto 0) <= not in_data(1 downto 0);
                    when "11" => out_data(1) <= in_data(0);
                                 out_data(0) <= not in_data(1); 
                                 out_data(2) <= in_data(2) xor is8PSK;
                    when others => -- Do nothing                
                end case;
            else
                out_postMapR <= R;
            end if;
        end if;
    end process;

end scrambler_arch;
