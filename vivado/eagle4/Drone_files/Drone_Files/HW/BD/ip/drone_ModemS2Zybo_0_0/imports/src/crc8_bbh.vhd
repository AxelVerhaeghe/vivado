library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity crc8_bbh is
port (

	-- IN

 	clk: 					in std_logic;
	rst:					in std_logic;
	
	data_in:				in std_logic; -- The input bits of the BBHeader
	
	BBHeader_9_done:			in std_logic; -- Indicates whether the last bit of the BBHeader has been sent out
	
	output_valid_BBH:			in std_logic; -- Indicates that the output of the previous block is valid
	
	readyForPreviousBlock_inserter_bbh:	in std_logic; -- Indicates whether the next block is ready to receive data
	
	-- OUT

	data_out:				out std_logic; -- The output bits of the crc8
	
	readyForPreviousBlock_CRC8_BBH:		out std_logic; -- Indicates that this block is ready to receive data from previous
	
	crc8_bbh_done:				out std_logic; -- Becomes high when the final bit of the crc8 is on the output
	
	output_valid_CRC8_BBH:			out std_logic -- Indicates that the output of this block is valid for the next block

);
end crc8_bbh;

architecture bbh of crc8_bbh is
	
	-- STATE SIGNALS
	type state_type is (initialize, shifting, appending);
	signal state:		state_type;
	signal next_state:	state_type;
	
	-- CONTROL SIGNALS
	signal clear_register:	std_logic; -- Bring register in known state
	signal enable:		std_logic; -- Enables the shifting in the shiftReg
	signal tap:		std_logic; -- Determine whether we are doing a pure shift or are calculating CRC8 remainder
	signal cnt_enable:	std_logic; -- Enables the counter
	
	-- DATA SIGNALS
	signal shiftReg:	std_logic_vector(0 to 7); -- The shiftReg containing the CRC8 bits
	signal inputLine:	std_logic; -- The input line used in calculating the shiftReg values
	signal count:		integer range 0 to 7;
begin
	
inputLine <= shiftReg(7) XOR data_in; -- Asynchronous: the input line used to determine the values in the shiftReg

Controller:	process(clk, rst)
		begin
			if (rst = '1') then
				state <= initialize;
			elsif (rising_edge(clk)) then
				state <= next_state;
			end if;
		end process;
		
NextStateLogic:	process(state, readyForPreviousBlock_inserter_bbh, BBHeader_9_done, count)
		begin
			case state is
			when initialize => -- Always go to shifting next
						next_state <= shifting;
			when shifting => -- Send out CRCB byte (appending) when all data from the BBHeader has been sent out
				if (BBHeader_9_done = '1') then
					next_state <= appending;
				else
					next_state <= shifting;
				end if;
			when appending => -- Go back to initialize after byte has been sent out
				if (count = 7 AND readyForPreviousBlock_inserter_bbh = '1') then
					next_state <= initialize;
				else
					next_state <= appending;
				end if;
			end case;
		end process;
		
outputLogic:	process(state, readyForPreviousBlock_inserter_bbh, output_valid_BBH, count)
		begin
			case state is
			when initialize =>
				crc8_bbh_done <= '0';
				cnt_enable <= '0';
				clear_register <= '1';
				output_valid_CRC8_BBH <= '0';
				enable <= '0';
				tap <= '-';
				readyForPreviousBlock_CRC8_BBH <= '0'; -- We do not yet want to receive data from the header block
			when shifting =>
				crc8_bbh_done <= '0';
				cnt_enable <= '0';
				clear_register <= '0';
				enable <= '0';
				tap <= '1';
				readyForPreviousBlock_CRC8_BBH <= readyForPreviousBlock_inserter_bbh;
				output_valid_CRC8_BBH <= output_valid_BBH;
				if (readyForPreviousBlock_inserter_bbh = '1') then -- We are only ready when the inserter is ready for input from us
					if (output_valid_BBH = '1') then -- Only enable shifting in the shiftReg when input is valid
						enable <= '1';
					end if;
				end if;
			when appending =>
				clear_register <= '0';
				readyForPreviousBlock_CRC8_BBH <= '0';
				tap <= '0';
				crc8_bbh_done <= '0';
				cnt_enable <= '0';
				enable <= '0';
				output_valid_CRC8_BBH <= '0';
				if (readyForPreviousBlock_inserter_bbh = '1') then -- Only send out CRC8 byte when the inserter is ready for input
					if (count = 7) then -- Send out done signal when the last bit has been sent out to the inserter
						crc8_bbh_done <= '1';
					end if;
					cnt_enable <= '1';
					enable <= '1';
					output_valid_CRC8_BBH <= '1';
				end if;
			end case;
		end process;
		
Datapath:	process(clk,rst)
		begin
			if (rst = '1') then
				shiftReg <= (others => '0'); -- Reset the shiftReg
			elsif (rising_edge(clk)) then
				if (clear_register = '1') then
					shiftReg <= (others => '0'); -- Clear the values of shiftReg
				elsif (enable = '1' AND tap = '1') then -- Pass through data and calculate shiftReg values
					shiftReg(0) <= inputLine;
					shiftReg(1) <= shiftReg(0) XOR '0';
					shiftReg(2) <= shiftReg(1) XOR inputLine;
					shiftReg(3) <= shiftReg(2) XOR '0';
					shiftReg(4) <= shiftReg(3) XOR inputLine;
					shiftReg(5) <= shiftReg(4) XOR '0';
					shiftReg(6) <= shiftReg(5) XOR inputLine;
					shiftReg(7) <= shiftReg(6) XOR inputLine;
				elsif (enable = '1' AND tap = '0') then -- Pass through the values of shiftReg without calculating new data
					shiftReg(1 to 7) <= shiftReg(0 to 6);
					shiftReg(0) <= '0';
				end if;
			end if;
		end process;

outputData:	process(data_in,tap, shiftReg) -- MUX: selecting incomming data or shiftReg value as output
		begin
			if (tap = '1') then
				data_out <= data_in;
			elsif (tap = '0') then
				data_out <= shiftReg(7);
			end if;
		end process;

Counter:	process(rst, clk)
		begin
			if (rst = '1') then
				count <= 0;
			elsif (rising_edge(clk)) then
				if (cnt_enable = '1') then
					if (count = 7) then
						count <= 0;
					else
						count <= count + 1;
					end if;
				end if;
			end if;			
		end process;

end bbh;
