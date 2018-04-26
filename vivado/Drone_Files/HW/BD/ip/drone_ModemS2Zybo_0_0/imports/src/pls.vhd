library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity pls is
    port(
        -- Physical layer settings
        pls_modcod: in integer range 0 to 31;
        pls_blocksize: in std_logic; -- 1=16200
        pls_pilot: in std_logic;

        -- PLS field to transmit (pi/2 bpsk, MSB first) 
        pls_field: out std_logic_vector(89 downto 0)

    );
end pls;

architecture pls_arch of pls is
    signal pls_blockCodeInput: std_logic_vector(5 downto 0);
    signal pls_blockCodeOutput: std_logic_vector(63 downto 0);
begin

    pls_blockCodeInput <= std_logic_vector(to_unsigned(pls_modcod, 5)) & pls_blocksize;

    blockCodeProc: process (pls_blockCodeInput, pls_pilot)
        variable blockCodeOut: std_logic_vector(31 downto 0);
    begin
        blockCodeOut := (others => '0');
        if(pls_blockCodeInput(5) = '1') then
            blockCodeOut := blockCodeOut xor "01010101010101010101010101010101";
        end if;
        if(pls_blockCodeInput(4) = '1') then
            blockCodeOut := blockCodeOut xor "00110011001100110011001100110011";
        end if;
        if(pls_blockCodeInput(3) = '1') then
            blockCodeOut := blockCodeOut xor "00001111000011110000111100001111";
        end if;
        if(pls_blockCodeInput(2) = '1') then
            blockCodeOut := blockCodeOut xor "00000000111111110000000011111111";
        end if;
        if(pls_blockCodeInput(1) = '1') then
            blockCodeOut := blockCodeOut xor "00000000000000001111111111111111";
        end if;
        if(pls_blockCodeInput(0) = '1') then
            blockCodeOut := blockCodeOut xor "11111111111111111111111111111111";
        end if;

        for I in 31 downto 0 loop
            pls_blockCodeOutput(2*I + 1) <= blockCodeOut(I);
            pls_blockCodeOutput(2*I) <= blockCodeOut(I) xor pls_pilot;
        end loop;
    end process;

    pls_field <= "01100011010010111010000010" & (pls_blockCodeOutput xor "0111000110011101100000111100100101010011010000100010110111111010");

end pls_arch;
