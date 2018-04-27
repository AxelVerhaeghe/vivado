library ieee;
use ieee.std_logic_1164.all;

entity byte_splitter is
port (
	-- IN

 	clk: 						in std_logic;
	rst:						in std_logic;

	readyForPreviousBlock_CRC8:			in std_logic; -- Indicates that the next block is ready for new input

	
	ctrl_sync:					in std_logic; -- Indicates that the SYNC byte is the current input of the byte_splitter			
	in_inputValid:					in std_logic; -- Indicates that the input from the previous block is valid	
	data_in:					in std_logic_vector(7 downto 0); -- The incoming byte to be split into bits
	
	-- OUT

	readyForPreviousBlock_byteSplitter:		out std_logic; -- Indicated that this block is ready for input
	output_valid_byteSplitter:			out std_logic; -- Indicates that the output of this block is valid
	
	sync_bit:					out std_logic; -- Signal used to pass SYNC bit instructions to the next block (CRC8)
	data_out:					out std_logic -- The output bit of this block
);
end byte_splitter;

architecture splitter1 of byte_splitter is

	-- STATE SIGNALS
	type State_type IS (unknown, init, split);  	-- Define the FSM states
	signal state : State_type; 			-- Stores the current state of the FSM
	signal next_state: State_type; 			-- Stores the next state of the FSM
	
	-- CONTROL SIGNALS
	signal load:			std_logic; -- Used to load the data_in into the data register
	signal cnt_enable:		std_logic; -- Used to enable the counter
	signal enable:			std_logic; -- Used to enable the shifting of the shift register (bit output)
	
	-- DATA SIGNALS
	signal data:			std_logic_vector(7 downto 0); 	-- Represents the shift register containing the most recent data_in
	signal count :  		integer range 0 to 7; 		-- Use this as index for the data byte, and if '= 0' last bit to send
begin

data_out <= data(7); -- Asynchronous action: Output is the bit at the end of our shift register, should only be read when output_valid_byteSplitter is high

Controller: process(clk,rst)
		begin
			if (rst = '1') then
				state <= init;
			elsif rising_edge(clk) then
			state <= next_state;
			end if;
		end process;
		
NextStateLogic:	process(state, readyForPreviousBlock_CRC8, in_inputValid, count)
		begin
			case state is
			when init =>
				if (in_inputValid = '1') then	-- When the input is valid we can start splitting the data_in byte into bits
					next_state <= split;
				else
					next_state <= init;	-- Else we wait untill in_inputValid
				end if;
			when split =>
				if (count = 7 AND readyForPreviousBlock_CRC8 = '1') then -- When all bits have been send out, go back to init if we are still ready
					next_state <= init;
				else
					next_state <= split;
				end if;
			when unknown =>
				next_state <= unknown;
			end case;
		end process;

OutputLogic:	process(in_inputValid, readyForPreviousBlock_CRC8, state, rst, count, ctrl_sync)
		begin
			if (rst = '1') then 
				load <= '0';
				readyForPreviousBlock_byteSplitter <= '0';
				output_valid_byteSplitter <= '0';
				cnt_enable <= '0';
				enable <= '0';
				sync_bit <= '0';
			else
				case state is
				when init =>
					output_valid_byteSplitter <= '0';
					cnt_enable <= '0';
					enable <= '0';
					sync_bit <= '0';
					load <= '0';
					readyForPreviousBlock_byteSplitter <= '1';
					if (in_inputValid = '1') then -- Load byte and don't ask for new input
						load <= '1';
						readyForPreviousBlock_byteSplitter <= '0';
					end if;
				when split =>
					readyForPreviousBlock_byteSplitter <= '0';
					load <= '0';
					enable <= '0';
					cnt_enable <= '0';
					output_valid_byteSplitter <= '0';
					sync_bit <= '0';
					if (readyForPreviousBlock_CRC8 = '1') then -- Count and give bit as output (shift)
						enable <= '1';
						cnt_enable <= '1';
						output_valid_byteSplitter <= '1';
						if (count = 7) then 
							readyForPreviousBlock_byteSplitter <= '1';
						end if;
					end if;
					if (ctrl_sync = '1') then -- Send SYNC bit signal to the next block
						sync_bit <= '1';
					end if;
				when unknown =>
					output_valid_byteSplitter <= '0';
					cnt_enable <= '0';
					enable <= '0';
					sync_bit <= '0';
					load <= '0';
					readyForPreviousBlock_byteSplitter <= '0';
				end case;
			end if;
		end process;

Datapath: process(clk, rst)
		begin
			if (rst = '1') then
				data <= "00000000";
			elsif (rising_edge(clk)) then
				if (load ='1') then
					data <= data_in; -- Load in the data on the input
				end if;
				if (enable = '1') then -- Shift the data when enable is high
					data(7 downto 1) <= data(6 downto 0);
				end if;
			end if;		
		end process;
	
Counter:	process(rst, clk) -- The counter
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
	
end splitter1;
