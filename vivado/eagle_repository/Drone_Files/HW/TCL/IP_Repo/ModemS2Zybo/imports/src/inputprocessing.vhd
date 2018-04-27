library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity inputProcessing is
generic(
	bypassScrambler:	boolean := false		-- Bypass the scrambler block or not
);
port(
	--Clock
	clk:			in  std_logic;
	
	--Control signals
	ctrl_reset:		in  std_logic;			-- Reset internal state at beginning of each BBFRAME
	ctrl_rolloff: 		in  std_logic_vector(1 downto 0);
	ctrl_sync:		in  std_logic;			-- High while in_data is SYNC byte (no fragmentation)
	ctrl_LDPCCode:		in  integer range 0 to 23;	-- LDPC code used (Standard: Table 6.a)
	ctrl_fragmentation:	in  std_logic;			-- Fragment incoming data stream = No Padding
	ctrl_bbFrameEnd:	out std_logic;			-- Signal next blocks BBFRAME end
	ctrl_bbFrameStart:	out std_logic;			-- Signal next block BBFRAME start
	ctrl_FECInputIdle:	in  std_logic;			-- FEC block expecting input
	
	--Buffered MODCOD
	ctrl_modcod_id_in:	in integer range 0 to 31;
	ctrl_modcod_id_out:	out integer range 0 to 31;
	
	--Input interfaces
	in_inputValid:		in  std_logic;
	in_readyForPreviousBlock:		out std_logic;	-- Inform previous block that this one is ready
	in_data:		in  std_logic_vector(7 downto 0);	
	
	--Output interfaces
	out_outputValid:	out std_logic;			-- Output data is valid
	out_nextBlockReady:	in  std_logic;			-- Next block is ready
	out_data:		out std_logic			-- Output data
);
end inputProcessing;

architecture inputProcessing_arch of inputProcessing is
	
	-- READY SIGNALS
	signal readyForPreviousBlock_CRC8: 			std_logic;
	signal readyForPreviousBlock_inserter_dfl: 		std_logic;
	signal readyForPreviousBlock_CRC8_BBH:			std_logic;
	signal readyForPreviousBlock_inserter_bbh:		std_logic;
	signal readyForPreviousBlock_BBScrambler:		std_logic;
	
	-- OUTPUT VALID SIGNALS
	signal output_valid_byteSplitter: 			std_logic;
	signal output_valid_CRC8: 				std_logic;
	signal output_valid_BBH:				std_logic;
	signal output_valid_CRC8_BBH:				std_logic;
	signal output_valid_inserter:				std_logic;
	
	-- DATA SIGNALS
	signal out_byte_splitter: 				std_logic;
	signal out_crc8_data:					std_logic;
	signal out_BBH_9:					std_logic;
	signal out_crc8_bbh:					std_logic;
	signal out_inserter:					std_logic;
	
	-- CONTROL SIGNALS
	signal sync_bit:					std_logic; -- SYNC bit on input
	signal syncd_fragmentation:				integer range 0 to 65535; -- Amount of fragmentation done in last frame (needed for BBHeader)
	signal fieldLength:					integer range 0 to 65535; -- DFL for BBHeader
	signal BBHeader_9_done:					std_logic; -- Signal that BBHeader has sent out all bits
	signal end_of_frame:					std_logic; -- End of frame
	signal start_of_frame:					std_logic; -- Start of frame
	signal crc8_bbh_done:					std_logic; -- all CRC8 bits from BBHeader have been sent out

begin

ctrl_modcod_id_out <= ctrl_modcod_id_in; -- Buffering the signal to next module

-- FOR DOCUMENTATION ON FOLLOWING BLOCKS: see the files of the blocks for more details
	
	ByteSplitter_Block: 	entity work.byte_splitter 
				port map(
				clk => clk,
				rst => ctrl_reset,
				readyForPreviousBlock_CRC8 => readyForPreviousBlock_CRC8,
				ctrl_sync => ctrl_sync,
				in_inputValid => in_inputValid,
				data_in => in_data,
				readyForPreviousBlock_byteSplitter => in_readyForPreviousBlock,
				output_valid_byteSplitter => output_valid_byteSplitter,
				sync_bit => sync_bit,
				data_out => out_byte_splitter
				);
			
	CRC8_data_Block:	entity work.crc8_data
				port map(
				clk => clk,
				rst => ctrl_reset,
				data_in => out_byte_splitter,
				sync_bit => sync_bit,
				output_valid_byteSplitter => output_valid_byteSplitter,
				readyForPreviousBlock_inserter_dfl => readyForPreviousBlock_inserter_dfl,
				data_out => out_crc8_data,
				readyForPreviousBlock_CRC8 => readyForPreviousBlock_CRC8,
				output_valid_CRC8 => output_valid_CRC8
				);
	
	BBH_9_Block:		entity work.BBHeader_9_byte
				port map(
				clk => clk,
				rst => ctrl_reset,
				syncd_fragmentation => syncd_fragmentation,
				fieldLength => fieldLength,
				readyForPreviousBlock_CRC8_BBH => readyForPreviousBlock_CRC8_BBH,
				data_out => out_BBH_9,
				output_valid_BBH => output_valid_BBH,
				BBHeader_9_done => BBHeader_9_done
				);
			
	CRC8_BBH_Block:		entity work.crc8_bbh
				port map(
				clk => clk,
				rst => ctrl_reset,
				data_in => out_BBH_9,
				BBHeader_9_done => BBHeader_9_done,
				output_valid_BBH => output_valid_BBH,
				readyForPreviousBlock_inserter_bbh => readyForPreviousBlock_inserter_bbh,
				data_out => out_crc8_bbh,
				crc8_bbh_done => crc8_bbh_done,
				readyForPreviousBlock_CRC8_BBH => readyForPreviousBlock_CRC8_BBH,
				output_valid_CRC8_BBH => output_valid_CRC8_BBH
				);
	
	Inserter_Block:		entity work.inserter
				port map(
				clk => clk,
				rst => ctrl_reset,
				ctrl_fragmentation => ctrl_fragmentation,
				ctrl_LDPCCode => ctrl_LDPCCode,
				df_bit => out_crc8_data,
				sync_bit => sync_bit,
				BBH_bit => out_crc8_bbh,
				output_valid_CRC8 => output_valid_CRC8,
				output_valid_CRC8_BBH => output_valid_CRC8_BBH,
				readyForPreviousBlock_BBScrambler => readyForPreviousBlock_BBScrambler,
				out_BBF_bit => out_inserter,
				output_valid_inserter => output_valid_inserter,
				readyForPreviousBlock_inserter_dfl => readyForPreviousBlock_inserter_dfl,
				readyForPreviousBlock_inserter_bbh => readyForPreviousBlock_inserter_bbh,
				syncd_fragmentation => syncd_fragmentation,
				crc8_bbh_done => crc8_bbh_done,
				end_of_frame => end_of_frame,
				start_of_frame => start_of_frame,
				fieldLength_out => fieldLength,
				ctrl_FECInputIdle => ctrl_FECInputIdle
				);
	
	BBScrambler_Block:	entity work.bbscrambler
				port map (
				clk => clk,
				rst => ctrl_reset,
				data_in => out_inserter,
				output_valid_inserter => output_valid_inserter,
				bypassScrambler => bypassScrambler,
				readyForPreviousBlock_FEC => out_nextBlockReady,
				end_of_frame => end_of_frame,
				start_of_frame => start_of_frame,
				data_out => out_data,
				readyForPreviousBlock_BBScrambler => readyForPreviousBlock_BBScrambler,
				output_valid_BBScrambler => out_outputValid,
				ctrl_bbFrameEnd => ctrl_bbFrameEnd,
				ctrl_bbFrameStart => ctrl_bbFrameStart
				);
end inputProcessing_arch;
