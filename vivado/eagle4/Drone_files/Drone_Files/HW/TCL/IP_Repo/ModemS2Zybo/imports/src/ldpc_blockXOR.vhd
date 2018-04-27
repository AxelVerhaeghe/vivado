library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ldpc_blockxor is
port(
    offset: in integer range 0 to 17;
    data_block: in std_logic_vector(17 downto 0);

    -- This port should be connected at the parity address
    in_block1: in std_logic_vector(17 downto 0);
    out_block1: out std_logic_vector(17 downto 0);

    -- And this port to the next address (modulo parity length)
    in_block2: in std_logic_vector(17 downto 0);
    out_block2: out std_logic_vector(17 downto 0)
);
end ldpc_blockxor;  

architecture ldpc_blockxor_arch of ldpc_blockxor is
    signal xorPattern: std_logic_vector(35 downto 0);

    signal in_largeBlock: std_logic_vector(35 downto 0);
    signal out_largeBlock: std_logic_vector(35 downto 0);
begin

    xorProc: process(offset, data_block)
    begin
        --TODO: Likely quite expensive. May need pipeline registers
        xorPattern <= (others => '0');
        case offset is 
            when 0 => xorPattern (35 downto 18) <= data_block;
            when 1 => xorPattern (34 downto 17) <= data_block;
            when 2 => xorPattern (33 downto 16) <= data_block;
            when 3 => xorPattern (32 downto 15) <= data_block;
            when 4 => xorPattern (31 downto 14) <= data_block;
            when 5 => xorPattern (30 downto 13) <= data_block;
            when 6 => xorPattern (29 downto 12) <= data_block;
            when 7 => xorPattern (28 downto 11) <= data_block;
            when 8 => xorPattern (27 downto 10) <= data_block;
            when 9 => xorPattern (26 downto 9)  <= data_block;
            when 10 => xorPattern (25 downto 8) <= data_block;
            when 11 => xorPattern (24 downto 7) <= data_block;
            when 12 => xorPattern (23 downto 6) <= data_block;
            when 13 => xorPattern (22 downto 5) <= data_block;
            when 14 => xorPattern (21 downto 4) <= data_block;
            when 15 => xorPattern (20 downto 3) <= data_block;
            when 16 => xorPattern (19 downto 2) <= data_block;
            when 17 => xorPattern (18 downto 1) <= data_block;
            -- 18 would be the same as advancing the address pointer by one and using offset = 0
        end case;
    end process;
	
    -- Combine both ports into one block. Two ports are needed for address freedom.
    in_largeBlock <= in_block1 & in_block2;

    out_largeBlock <= in_largeBlock xor xorPattern;

    -- Split again for 18 bit memory ports
    out_block1 <= out_largeBlock(35 downto 18);
    out_block2 <= out_largeBlock(17 downto 0);
    

end ldpc_blockxor_arch;
