library ieee;
use ieee.numeric_std.all;
use work.config.all;
use work.functions.all;
use ieee.std_logic_1164.all;

entity bch is
generic(
    fecConfig: FEC_CONFIG := FEC_CONFIG_DVBT2
);
port(
	-- Clock
	clk: in std_logic;

    -- Control signals
    -- This signal should be pulsed before the beginning of a frame
    -- to clear the internal state of the block
    in_frame_start: in std_logic;
    -- And this one at the end of the user data
    in_frame_end: in std_logic;

    -- Interface for reading bits
    in_inputValid: in std_logic;
    in_readyForPreviousBlock: out std_logic;
    in_data: in std_logic;

    bch_polynomial: in integer range 0 to fecConfig.bch_maxPolynomial;

    -- Interface for writing result bits
    out_outputValid: out std_logic;
    out_nextBlockReady: in std_logic;
    out_data: out std_logic;
    
    -- Control signals to LDPC block
    out_bchFrameEnded: out std_logic


);
end bch;  

architecture bch_arch of bch is
begin


	-- Add code here

	-- Remove this code
	out_data <= in_data;
	out_outputValid <= in_inputValid;
	in_readyForPreviousBlock <= out_nextBlockReady;
	out_bchFrameEnded <= in_frame_end;

end bch_arch;

