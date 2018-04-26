library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity BBHeader_9_byte is
port (

	-- IN

 	clk: 					in std_logic;
	rst:					in std_logic;
	
	syncd_fragmentation:			in integer range 0 to 65535; 	-- This will determine the value of SYNCD byte in the BBH_bit
										-- Will be determined by the fragmentation (input from inserter) and be '0' first run
	
	fieldLength:				in integer range 0 to 65535;	-- Represents the length of the datafield (input from the inserter))
	
	readyForPreviousBlock_CRC8_BBH:		in std_logic; -- To see whether the CRC8 for the BBH is ready for input 
	
	-- OUT

	data_out:				out std_logic; -- The output bits of the BBH_9
	
	output_valid_BBH:			out std_logic; -- Active when the ouput of this unit is valid
	
	BBHeader_9_done:			out std_logic -- Active when the last bit of BBHeader has been sent		

);
end BBHeader_9_byte;

architecture create of BBHeader_9_byte is

	-- SIGNALS for the different bytes of the BBHeader
	signal MATYPE:				std_logic_vector(15 downto 0) := "1111000000000000";
	signal UPL:				std_logic_vector(15 downto 0) := "0000010111100000";	-- Usefull package length = 1504 bits
	signal DFL:				std_logic_vector(15 downto 0); 				-- Datafield length, depends on ctrl_LDPCCode
	signal SYNC:				std_logic_vector(7 downto 0) := "01000111"; 		-- Value of the SYNC bit, 47 HEX = 71
	signal SYNCD:				std_logic_vector(15 downto 0); 				-- Distance to first UPL, determined by the fragmentation
	
	-- STATE SIGNALS
	type state_type is (unknown, init, sending);
	signal state:		state_type;
	signal next_state:	state_type;
	
	-- CONTROL SIGNALS
	signal cnt_enable:			std_logic;
	
	-- DATA SIGNALS
	signal count:				integer range 0 to 71;
	signal header:				std_logic_vector(71 downto 0);
begin

SYNCD <= std_logic_vector(to_unsigned(syncd_fragmentation,SYNCD'length)); -- Converts the incomming syncd_fragmentation integer to byte signal

DFL <= std_logic_vector(to_unsigned(fieldLength,DFL'length)); -- Converts the incomming fieldLength integer to a 2 byte signal

header <= MATYPE & UPL & DFL & SYNC & SYNCD; -- Construct first 9 bytes of the BBHeader by combining the previously defined elements

Controller:	process(clk,rst)
		begin
			if (rst = '1') then
				state <= init;
			elsif (rising_edge(clk)) then
				state <= next_state;
			end if;
		end process;
		
NextStateLogic:	process(state, readyForPreviousBlock_CRC8_BBH, count)
		begin
			case state is
			when init =>	-- The BBHeader bits are the first to be sent out, so we can already go to the next state
					next_state <= sending;
			when sending => -- We only go back to init when we need to send out another BBHeader
				if (count = 71 AND readyForPreviousBlock_CRC8_BBH = '1') then
					next_state <= init;
				else
					next_state <= sending;
				end if;
			when unknown =>
				next_state <= unknown;
			end case;
		end process;
		
OutputLogic:	process(state, readyForPreviousBlock_CRC8_BBH, count)
		begin
			case state is
			when init => -- Set all values
				output_valid_BBH <= '0';
				BBHeader_9_done <= '0';
				cnt_enable <= '0';
			when sending => -- Count and output valid
				output_valid_BBH <= '1';
				BBHeader_9_done <= '0';
				cnt_enable <= '0';
				if (readyForPreviousBlock_CRC8_BBH = '1') then -- Only count when the next block is ready for input
					cnt_enable <= '1';
					if (count = 71) then -- If our last bit has been sent out, set BBHeader_9_done high
						BBHeader_9_done <= '1';
					end if;
				end if;
			when unknown =>
				output_valid_BBH <= '0';
				BBHeader_9_done <= '0';
				cnt_enable <= '0';
			end case;
		end process;

Counter:	process(rst, clk)
		begin
			if (rst = '1') then
				count <= 0;
			elsif (rising_edge(clk)) then
				if (cnt_enable = '1') then
					if (count = 71) then
						count <= 0;
					else
						count <= count + 1;
					end if;
				end if;
			end if;			
		end process;

data_out <= header(71 - count); -- Asynchronous: data_out sends out the bits of the BBHeader in order

end create;
