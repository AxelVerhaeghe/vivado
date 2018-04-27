library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity inserter is
port (

	-- IN

 	clk: 						in std_logic;
	rst:						in std_logic;
	
	ctrl_fragmentation:				in std_logic; -- Indicates if fragmentation is used or padding
	ctrl_LDPCCode:					in integer range 0 to 23; -- Determines DFL_length
	
	df_bit:						in std_logic; -- Datafield input bit
	sync_bit:					in std_logic; -- Is high when the input bit is part of the sync byte
	BBH_bit:					in std_logic; -- BB Header input bit
	
	output_valid_CRC8:				in std_logic; -- Indicates whether the output of the datafield is valid
	output_valid_CRC8_BBH:				in std_logic; -- Indicates whether the output of the BB header is valid
	crc8_bbh_done:					in std_logic; -- Becomes high when the last bit of the crc8 is on the input
	
	readyForPreviousBlock_BBScrambler:		in std_logic; -- Indicates that the next block is ready to receive input
	
	-- OUT

	out_BBF_bit:					out std_logic; -- Outgoing BB Frame bit
	output_valid_inserter:				out std_logic; -- Indicates that the output of this block is valid
	readyForPreviousBlock_inserter_dfl:		out std_logic; -- Indicates that the block is ready for input of the datafield
	readyForPreviousBlock_inserter_bbh:		out std_logic; -- Indicates that the block is ready for input of the BB header
	
	syncd_fragmentation:				out integer range 0 to 65535 := 0; -- Indicates the amount of fragmentation for BBH
	end_of_frame:					out std_logic; -- High when we are sending out the end of a BBFrame
	start_of_frame:					out std_logic; -- High when we are sending out the start of a BBFrame
	
	fieldLength_out:				out integer range 0 to 65535; -- DFL for BBHeader

	ctrl_FECInputIdle:				in  std_logic -- High when the next module needs input

);

function determine_fieldLength(code : integer range 0 to 23) return integer is
begin
	case code is
	when 0 => --SHORT FRAMES
		return 3072-80;
	when 1 =>
		return 7032-80;
	when 4 =>
		return 9552-80;
	when 5 =>
		return 10632-80;
	when 6 =>
		return 11712-80;
	when 7 =>
		return 12432-80;
	when 8 =>
		return 13152-80;
	when 11 => -- LONG FRAMES
		return 32208-80;
	when 14 =>
		return 38688-80;
	when 15 =>
		return 43040-80;
	when 16 =>
		return 48408-80;
	when 17 =>
		return 51648-80;
	when 18 =>
		return 53840-80;
	when others =>
		return 0;
	end case;
end determine_fieldLength;

end inserter;

architecture insert of inserter is

	-- STATE SIGNALS
	type state_type is (resetState, init, header, DF, padding);
	signal state:		state_type := init;
	signal next_state:	state_type;
	
	-- CONTROL SIGNALS
	signal cnt_enable1:			std_logic; -- Counter1
	signal count1:				integer range 0 to 65535; -- Used for SYNCD in BBHeader
	signal cnt_enable2:			std_logic; -- Counter2
	signal count2:				integer range 0 to 1503; -- Used to keep track of UPL
	signal endOfUPL:			std_logic; -- Becomes high when the last bit of a UPL is on the output
	
	-- DATA SIGNALS
	
begin

Controller:	process(clk,rst)
		begin
			if (rst = '1') then
				state <= resetState;
			elsif (rising_edge(clk)) then
				state <= next_state;
			end if;
		end process;
		
NextStateLogic:	process(state, readyForPreviousBlock_BBScrambler, crc8_bbh_done, count1, ctrl_fragmentation, ctrl_FECInputIdle, endOfUPL)
		begin
			case state is
			when resetState => --Start sending header after forcing new frame to start
				next_state <= header;
			when init =>
				if (ctrl_FECInputIdle = '1') then -- When the next module expects input, start asking for BBHeader bits
					next_state <= header;
				else
					next_state <= init;
				end if;
			when header =>
				if (crc8_bbh_done = '1') then -- When all BBHeader bits have been sent out, start asking for DF bits
					next_state <= DF;
				else
					next_state <= header;
				end if;
			when DF =>
				next_state <= DF;
				if (count1 = 1 AND readyForPreviousBlock_BBScrambler = '1') then -- Go to init when BBFrame is full
					next_state <= init;
				elsif (count1 < 1504 AND endOfUPL = '1' AND readyForPreviousBlock_BBScrambler = '1') then
					if (ctrl_fragmentation = '0') then -- Go to padding when no full UPL can be put into the rest of the BBFrame, else fragment
						next_state <= padding;
					end if;
				end if;
			when padding => -- Append rest with 0's
				if (count1 = 1 AND readyForPreviousBlock_BBScrambler = '1') then -- Go back to init when BBFrame has been filled
					next_state <= init;
				else
					next_state <= padding;
				end if;
			end case;
		end process;
		
OutputLogic:	process(rst, state, readyForPreviousBlock_BBScrambler, output_valid_CRC8_BBH, output_valid_CRC8, count1, endOfUPL, ctrl_FECInputIdle)
		begin
			if (rst = '1') then
				start_of_frame <= '0';
				cnt_enable1 <= '0';
				cnt_enable2 <= '0';
				output_valid_inserter <= '0';
				readyForPreviousBlock_inserter_dfl <= '0';
				readyForPreviousBlock_inserter_bbh <= '0';
				end_of_frame <= '0';
			else
				case state is
				when resetState =>
					start_of_frame <= '1';
					cnt_enable1 <= '0';
					cnt_enable2 <= '0';
					output_valid_inserter <= '0';
					readyForPreviousBlock_inserter_dfl <= '0';
					readyForPreviousBlock_inserter_bbh <= '0';
					end_of_frame <= '0';
				when init =>
					start_of_frame <= '0';
					cnt_enable1 <= '0';
					cnt_enable2 <= '0';
					output_valid_inserter <= '0';
					readyForPreviousBlock_inserter_dfl <= '0';
					end_of_frame <= '0';
					readyForPreviousBlock_inserter_bbh <= '0';
					if (ctrl_FECInputIdle = '1') then -- When the next module wants input, go pulse start_of_frame signal
						start_of_frame <= '1';
					end if;
				when header =>
					start_of_frame <= '0';
					cnt_enable1 <= '0';
					cnt_enable2 <= '0';
					readyForPreviousBlock_inserter_dfl <= '0';
					end_of_frame <= '0';
					start_of_frame <= '0';
					readyForPreviousBlock_inserter_bbh <= '0';
					output_valid_inserter <= output_valid_CRC8_BBH;
					if (readyForPreviousBlock_BBScrambler = '1') then -- When the next block is ready, ask for BBHeader bits
						readyForPreviousBlock_inserter_bbh <= '1';
					end if;
				when DF =>
					end_of_frame <= '0';
					start_of_frame <= '0';
					cnt_enable1 <= '0';
					cnt_enable2 <= '0';
					readyForPreviousBlock_inserter_dfl <= '0';
					readyForPreviousBlock_inserter_bbh <= '0';
					start_of_frame <= '0';
					output_valid_inserter <= output_valid_CRC8;
					if (readyForPreviousBlock_BBScrambler = '1') then -- Only ask for DF bits when the next block is ready
						if (output_valid_CRC8 = '1') then -- Count when the input is valid
							cnt_enable1 <= '1';
							cnt_enable2 <= '1';
						end if;
						readyForPreviousBlock_inserter_dfl <= '1';					
					end if;
					if (count1 = 1) then -- Pulse end_of_frame signal at the end of the BBFrame
						end_of_frame <= '1';
					end if;
				when padding =>
					end_of_frame <= '0';
					cnt_enable1 <= '0';
					cnt_enable2 <= '0';
					readyForPreviousBlock_inserter_dfl <= '0';
					readyForPreviousBlock_inserter_bbh <= '0';
					start_of_frame <= '0';
					output_valid_inserter <= '1';
					if (readyForPreviousBlock_BBScrambler = '1') then -- Only count when next block is ready
						cnt_enable1 <= '1';
					end if;
					if (count1 = 1) then -- Pulse end_of_frame signal at the end of the BBFrame
						end_of_frame <= '1';
					end if;
				end case;
			end if;
		end process;

DataOutput:	process(state, df_bit, BBH_bit)
		begin
			if (state = header) then -- Send out BBHeader bits
				out_BBF_bit <= BBH_bit;
			elsif (state = DF) then -- Send out DF bits
				out_BBF_bit <= df_bit;
			elsif (state = padding) then -- Send out 0's for padding
				out_BBF_bit <= '0';
			else
				out_BBF_bit <= '0';
			end if;
		end process;
		
Counter2:	process(sync_bit, clk, count2) -- UPL lenthg
		begin
			if (count2 = 1503) then
				endOfUPL <= '1';
			else
				endOfUPL <= '0';
			end if;
			if (sync_bit = '1') then
				count2 <= 8;
			elsif (rising_edge(clk)) then
				if (cnt_enable2 = '1') then
					if (count2 = 1503) then
						count2 <= 0;
					else
						count2 <= count2 + 1;
					end if;
				end if;
			end if;			
		end process;

Counter1:	process(rst, clk, state, ctrl_LDPCCode) -- Used to know where we stopped with fragmentation (necessary for SYNCD in BBHeader)
		begin
			if (state = init OR state = resetState) then
				count1 <= determine_fieldLength(ctrl_LDPCCode);
			elsif (rising_edge(clk)) then
				if (cnt_enable1 = '1') then
					if (count1 > 1) then
						count1 <= count1 - 1;
					else
						count1 <= determine_fieldLength(ctrl_LDPCCode);
					end if;
				end if;
			end if;			
		end process;
	
DFL_OUT:	process(clk)
		begin
			if (rising_edge(clk)) then
				if (state = init OR state = resetState) then
					fieldLength_out <= determine_fieldLength(ctrl_LDPCCode);
				end if;
			end if;
		end process;
		
Fragmentation:	process(clk, rst) -- TODO syncd_fragmentation needs to be set to zero in padding mode
		begin
			if (rst = '1') then
				syncd_fragmentation <= 0;
			elsif (rising_edge(clk)) then
				if (endOfUPL = '1') then
					if (count1 = 1) then
						syncd_fragmentation <= 0;
					elsif (count1 <= 1504) then
						syncd_fragmentation <= 1505 - count1;
					end if;
				end if;
			end if;
		end process;	
end insert;
