library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity crc8_data is
port (

	-- IN

 	clk: 						in std_logic;
	rst:						in std_logic;
	
	data_in:					in std_logic;

	sync_bit:					in std_logic;
	output_valid_byteSplitter:			in std_logic; -- Indicates that the output of the byteSplitter is valid

	readyForPreviousBlock_inserter_dfl:		in std_logic; -- Indicated that the Inserter is ready to start receiving input
	
	-- OUT

	data_out:					out std_logic; -- The output bit of this block 
	readyForPreviousBlock_CRC8:			out std_logic; -- Indicates that this block is ready for new input
	
	output_valid_CRC8:				out std_logic -- Indicates that the output bits are valid

);
end crc8_data;

architecture data of crc8_data is
	
	-- STATE SIGNALS
	type state_type is (init, shifting);
	signal state:		state_type;
	signal next_state:	state_type;

	
	--CONTROL SIGNALS
	signal enable:		std_logic; -- Enables shifting in the shiftReg
	signal tap:		std_logic; -- Determine whether we are doing a pure shift or are calculating CRC8 remainder
	signal clear_register:	std_logic; -- Bring register in known state
	
	-- DATA SIGNALS
	signal shiftReg:	std_logic_vector(0 to 7); -- The shiftReg containing the CRC8 bits
	signal inputLine:	std_logic; -- The input line used in calculating the shiftReg values

		
begin

inputLine <= shiftReg(7) XOR data_in; -- Asynchronous: the input line used to determine the values in the shiftReg

Controller:	process(clk,rst)
		begin
			if (rst = '1') then -- Only go back to init when rst is high
				state <= init;
			elsif (rising_edge(clk)) then
				state <= next_state;
			end if;
		end process;
		
NextStateLogic:	process(state)
		begin
			case state is -- Always go to shifting next
			when init =>
				next_state <= shifting;
			when shifting => -- Stay in shifting, except when rst is high (see above)
				next_state <= shifting;
			end case;
		end process;
		
OutputLogic:	process(state, readyForPreviousBlock_inserter_dfl, output_valid_byteSplitter, sync_bit)
		begin
			case state is
			when init =>
				clear_register <= '1';
				enable <= '0';
				tap <= '-';
				readyForPreviousBlock_CRC8 <= '0';
				output_valid_CRC8 <= '0';
			when shifting =>
				clear_register <= '0';
				tap <= '1';
				enable <= '0';
				readyForPreviousBlock_CRC8 <= readyForPreviousBlock_inserter_dfl;
				output_valid_CRC8 <= output_valid_byteSplitter;
				if (readyForPreviousBlock_inserter_dfl = '1' AND output_valid_byteSplitter = '1') then -- Only send out CRCB bits when input is valid and inserter is ready for input
					enable <= '1';
				end if;
				if (sync_bit = '1') then -- Don't calculate new values when sync_bit is high, but send out CRC8 values instead
					tap <= '0';
				end if;
			end case;
		end process;
		
LFSR:		process(clk,rst)
		begin
			if (rst = '1') then
				shiftReg <= (others => '0'); -- Reset state of shiftReg
			elsif (rising_edge(clk)) then
				if (clear_register = '1') then
					shiftReg <= (others => '0'); -- Clear the shiftReg
				elsif (enable = '1' AND tap = '1') then -- Calculate new values of shiftReg when sending through data
					shiftReg(0) <= inputLine;
					shiftReg(1) <= shiftReg(0) XOR '0';
					shiftReg(2) <= shiftReg(1) XOR inputLine;
					shiftReg(3) <= shiftReg(2) XOR '0';
					shiftReg(4) <= shiftReg(3) XOR inputLine;
					shiftReg(5) <= shiftReg(4) XOR '0';
					shiftReg(6) <= shiftReg(5) XOR inputLine;
					shiftReg(7) <= shiftReg(6) XOR inputLine;
				elsif (enable = '1' AND tap = '0') then -- Send out shiftReg values without calculating new values
					shiftReg(1 to 7) <= shiftReg(0 to 6);
					shiftReg(0) <= '0';
				end if;
			end if;
		end process;
		
DataOut:	process(tap, shiftReg, data_in) -- MUX: send through input data or send out shiftReg values
		begin
			if (tap = '1') then
				data_out <= data_in;
			elsif (tap = '0') then
				data_out <= shiftReg(7);
			end if;
		end process;

end data;
