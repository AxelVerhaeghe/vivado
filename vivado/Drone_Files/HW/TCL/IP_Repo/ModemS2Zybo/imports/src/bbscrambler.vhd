library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bbscrambler is
port (

	-- IN

 	clk: 					in std_logic;
	rst:					in std_logic;
	
	data_in:				in std_logic; -- The input bit to scramble
	
	output_valid_inserter:			in std_logic; -- Indicates that the output of the previous inserter is valid
	
	bypassScrambler:			in boolean; -- Do not scramble the data TODO should this be in generic?
	
	readyForPreviousBlock_FEC:		in std_logic; -- Indicates that the next block is ready for input
	
	end_of_frame:				in std_logic; -- Indicates the end of the BBFrame
	
	start_of_frame:				in std_logic; -- Indicates the start of the BBFrame
	
	-- OUT

	data_out:				out std_logic; -- Scrambled output bit
	
	readyForPreviousBlock_BBScrambler:	out std_logic; -- Indicates that this block is ready for input of the previous block
	
	output_valid_BBScrambler:		out std_logic; -- Indicates that the output of this block is valid
	
	ctrl_bbFrameEnd:			out std_logic; -- Signal next blocks BBFRAME end
	ctrl_bbFrameStart:			out std_logic  -- Signal next blocks BBFRAME end

);
end bbscrambler;

architecture scramble of bbscrambler is

	-- STATE SIGNALS
	type state_type is (init, send_data);
	signal state, next_state:	state_type;
	
	-- CONTROL SIGNALS
	signal enable:			std_logic; -- Signal to control the shifting in the shiftReg
	
	-- DATA SIGNALS
	signal shiftReg:		std_logic_vector(1 to 15); -- Shiftregister
	signal shiftLine:		std_logic; -- The line that holds the input from the shiftReg

begin

shiftLine <= shiftReg(14) XOR shiftReg(15); -- Calculate value of shiftLine

ctrl_bbFrameEnd <= end_of_frame; 	-- Pass the end_of_frame value
ctrl_bbFrameStart <= start_of_frame; 	-- Pass the start_of_frame value

Controller:	process(clk,rst)
		begin
			if (rst = '1') then -- We only go back to init when we rst, otherwise we always have to scramble incomming data
				state <= init;
			elsif (rising_edge(clk)) then
				state <= next_state;
			end if;
		end process;

NextStateLogic:	process(state) --TODO moet hier toch niet bij?
		begin
			case state is
			when init => -- Always go to send_data
					next_state <= send_data;
			when send_data => -- Always stay in send_data, except when rst is high
				next_state <= send_data;
			end case;
		end process;
		
outputLogic:	process(state, readyForPreviousBlock_FEC, output_valid_inserter)
		begin
			case state is
			when init =>
				output_valid_BBScrambler <= '0';
				enable <= '0';
				readyForPreviousBlock_BBScrambler <= '0';
			when send_data =>
				readyForPreviousBlock_BBScrambler <= '0';
				enable <= '0';
				output_valid_BBScrambler <= output_valid_inserter;
				if (readyForPreviousBlock_FEC = '1') then -- We are only ready when the next block is ready for input
					if (output_valid_inserter = '1') then -- We only shift in the shiftReg when our input is valig
						enable <= '1';
					end if;
					readyForPreviousBlock_BBScrambler <= '1';
				end if;
			end case;
		end process;
		
Datapath:	process(clk,rst, start_of_frame)
		begin		
			if (rst ='1' OR start_of_frame = '1') then -- Reset the state of shiftReg when rst or start_of_frame are high
				shiftReg <= (1 => '1', 4 => '1', 6 => '1',8 => '1', others => '0');
			elsif (rising_edge(clk)) then
				if (enable = '1') then -- Shift when enable is high
					shiftReg(2 to 15) <= shiftReg(1 to 14);
					shiftReg(1) <= shiftLine;
				end if;
			end if;
		end process;

outputData:	process(bypassScrambler, shiftLine, data_in) -- MUX to either scramble or bypass the scrambler when bypassScrambler is high
		begin
			if (bypassScrambler = false) then
				data_out <= shiftLine XOR data_in;
			elsif (bypassScrambler = true) then
				data_out <= data_in;
			end if;
		end process;

end scramble;
