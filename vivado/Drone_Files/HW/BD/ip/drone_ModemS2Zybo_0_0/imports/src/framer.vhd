library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.sampleType.all;

-- This block implements the PHY framing for DVB-S2
-- If the FEC has no XFECFRAME ready, a dummy (payloadless) PLFRAME will be transmitted to keep the transmitter busy

entity framer is
    port(
        clk: in std_logic;
        
        -- Control interface (most MODCOD related control signals go through the FEC block as it can modify them)
        ctrl_pilot: std_logic; -- Setting this to 1 enables pilot transmission

        -- Interface for reading symbols (from FEC)
        in_inputValid: in std_logic;
        in_readyForPreviousBlock: out std_logic;
        in_data: in std_logic_vector(4 downto 0);
        in_last: in std_logic;
        in_modcod_mode: integer range 0 to 3;
        in_modcod_code: integer range 0 to 7; -- Used only for (small) rate dependent adjustments of constellation points. Can be left unused (set to 3) in exchange for a very small performance reduction.
        in_modcod_blocksize: std_logic; 
        in_modcod_id: integer range 0 to 31;

        -- Interface for writing result samples -> Run the block clock as fast as you can, and use nextBlockReady to limit the output symbol rate.
        -- Rate adaptation to MUX rate works automatically by inserting useless frames -> Don't use gigantic buffers as they will be filled up at max rate with filler frames
        -- Big buffers should not be needed anyway, there are already one or more big (data) buffers in the FEC interleavers.
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out std_logic_vector(4 downto 0);
        out_modcod_mode: out integer range 0 to 3;
        out_modcod_code: out integer range 0 to 7;
        out_postMapR: out std_logic_vector(1 downto 0);

        -- Some receivers don't like dummy PL-FRAMES
        -- If you disable this you need some other way of guaranteeing CBR, eg by using a TS null frame padder (in single stream mode)
        -- or by sending non-full padded BBframes (multiple streams). Note that broadcast services are not allowed to pad BBframes.
        ctrl_allowDummy: in std_logic;

        -- Status
        status_sendingDummy: out std_logic
    );
end framer;

architecture framer_arch of framer is
    -- FSM state
    type FRAMER_STATE_TYPE is (WAIT_FRAME, DECIDE_FRAME, READ_PLH, SEND_PLH, SEND_DATA, SEND_PILOT);
    signal framer_state: FRAMER_STATE_TYPE := DECIDE_FRAME;
    signal sending_dummy: std_logic;
    signal pilotSlotCounter: integer range 0 to 15; -- 16 slots
    signal slotSymbolCounter: integer range 0 to 89;
    signal pilotCounter: integer range 0 to 35; -- Number of pilot symbols sent
    signal dummyCounter: integer range 0 to 35;
    signal waitCounter: integer range 0 to 5; -- Up to 6 clock cylces are needed before new output will be valid (in case of 5 bit symbol) 

    -- mapper interface
    signal scrambler_inputValid: std_logic;
    signal scrambler_readyForPreviousBlock: std_logic;
    signal scrambler_data: std_logic_vector(4 downto 0);
    signal scrambler_modcod_mode: integer range 0 to 3;
    signal scrambler_run: std_logic;

    -- The Physical Layer Header (one PI/2 BPSK slot long, 90 symbols)    
    signal pls_field: std_logic_vector(89 downto 0);
    signal pls_fieldShift: std_logic_vector(89 downto 0);
    signal pls_counter: integer range 0 to 89;

    -- Settings buffered for current frame
    signal buffer_pilot: std_logic;
    signal buffer_modcod_mode: integer range 0 to 3;
    signal buffer_modcod_code: integer range 0 to 7;
    signal buffer_modcod_blocksize: std_logic;
    signal buffer_modcod_blocksize_old: std_logic;
    signal buffer_modcod_id: integer range 0 to 31;

    -- BPSK2 signals
    signal bpskMod_state: std_logic;
    signal bpskMod_bit: std_logic;
    signal bpskMod_symbol: std_logic_vector(4 downto 0);
begin
                                            
    -- PLHeader synth                                        
    plsGen: entity work.pls port map ( pls_modcod => buffer_modcod_id, 
                                       pls_blocksize => buffer_modcod_blocksize,
                                       pls_pilot => buffer_pilot,
                                       
                                       pls_field => pls_field );
                                       
    frameProc: process(clk)
    begin
        if(rising_edge(clk)) then
            waitCounter <= 5;
            case framer_state is
                when WAIT_FRAME =>
                    if(waitCounter = 0) then
                        framer_state <= DECIDE_FRAME;
                    else
                        waitCounter <= waitCounter -1;
                    end if;
                when DECIDE_FRAME =>
                    buffer_pilot <= ctrl_pilot;
                    -- Here we see if a XFECFRAME is waiting
                    if(in_inputValid='1') then
                        -- Yes, buffer the modcod settings needed for the header
                        buffer_modcod_id <= in_modcod_id;
                        buffer_modcod_mode <= in_modcod_mode;
                        buffer_modcod_code <= in_modcod_code;
                        buffer_modcod_blocksize <= in_modcod_blocksize;
                        buffer_modcod_blocksize_old <= in_modcod_blocksize;
                        sending_dummy <= '0';
                    else
                        -- No, send 36 slots of filler
                        buffer_modcod_id <= 0;
                        buffer_modcod_blocksize <= buffer_modcod_blocksize_old;
                        sending_dummy <= '1';
                    end if;
                    -- Give the PLS one clock to produce the output
                    if(ctrl_allowDummy='1' or in_inputValid='1') then
                        framer_state <= READ_PLH;
                    end if;
                    pls_counter <= 89;
                    bpskMod_state <= '0';
                    pilotSlotCounter <= 15;
                    slotSymbolCounter <= 89;
                    dummyCounter <= 35;
                when READ_PLH =>
                    -- Shifting out is more efficient than a 90 bit MUX
                    pls_fieldShift <= pls_field;
                    framer_state <= SEND_PLH;
                when SEND_PLH =>
                    if(scrambler_inputValid = '1' and scrambler_readyForPreviousBlock = '1') then
                        bpskMod_state <= not bpskMod_state;
                        pls_fieldShift <= pls_fieldShift (88 downto 0) & "0";
                        if(pls_counter=0) then
                            framer_state <= SEND_DATA;
                        else
                            pls_counter <= pls_counter - 1;
                        end if;
                    end if;
                when SEND_DATA =>
                    pilotCounter <= 35;
                    if(scrambler_inputValid = '1' and scrambler_readyForPreviousBlock = '1') then
                        if(slotSymbolCounter = 0) then
                            if(buffer_pilot='1') then
                                if(pilotSlotCounter = 0) then
                                    framer_state <= SEND_PILOT;
                                else
                                    pilotSlotCounter <= pilotSlotCounter - 1;
                                end if;
                            end if;
                            slotSymbolCounter <= 89;
                            -- SOF has priority over pilot block
                            if(sending_dummy='1') then
                                if(dummyCounter = 0) then
                                    framer_state <= DECIDE_FRAME;
                                else
                                    dummyCounter <= dummyCounter -1;
                                end if;
                            end if;
                        else
                            slotSymbolCounter <= slotSymbolCounter - 1;
                        end if;
                         
                        -- SOF has priority over pilot block.
                        -- The DATA timing is done based on the end signal of the FEC, and not counter based.
                        if(sending_dummy='0' and in_last='1') then
                            framer_state <= WAIT_FRAME;
                        end if;
                    end if;
                when SEND_PILOT => 
                    pilotSlotCounter <= 15;
                    if(scrambler_inputValid = '1' and scrambler_readyForPreviousBlock = '1') then
                        if(pilotCounter = 0) then
                            -- There is never a pilot block before SOF, so it is safe to back to data 
                            framer_state <= SEND_DATA;
                        else
                            pilotCounter <= pilotCounter - 1;
                        end if;
                    end if;
            end case;
        end if;    
    end process;
    
    scrambler_inst: entity work.scrambler port map (clk => clk,
                                                in_inputValid => scrambler_inputValid,
                                                in_readyForPreviousBlock => scrambler_readyForPreviousBlock,
                                                in_data => scrambler_data,
                                                in_mode => scrambler_modcod_mode,
                                                in_scramble => scrambler_run,

                                                out_outputValid => out_outputValid,
                                                out_nextBlockReady => out_nextBlockReady,
                                                out_data => out_data,
                                                out_postMapR => out_postMapR);

    -- PLH data for BPSK modulation
    bpskMod_bit <= pls_fieldShift(89);                        
    bpskMod_symbol <= "00" & bpskMod_state & (bpskMod_bit xor bpskMod_state) & bpskMod_bit;

    -- Output is valid when sending the PLH, DATA, PILOTS or dummy data
    scrambler_inputValid <= '1' when (framer_state = SEND_PLH) else
                         '1' when (framer_state = SEND_DATA and sending_dummy='1') else
                         in_inputValid when (framer_state = SEND_DATA and sending_dummy='0') else
                         '1' when (framer_state = SEND_PILOT) else
                         '0';

    in_readyForPreviousBlock <= scrambler_readyForPreviousBlock when (framer_state = SEND_DATA and sending_dummy='0') else
                                '0';

    scrambler_data <= bpskMod_symbol when framer_state = SEND_PLH else
                   in_data when (framer_state = SEND_DATA and sending_dummy='0') else
                   "00000"; --This is the pilot symbol
                   
    scrambler_run <= '1' when (framer_state = SEND_DATA) else
                     '1' when (framer_state = SEND_PILOT) else
                     '0';

    scrambler_modcod_mode <= buffer_modcod_mode when (framer_state = SEND_DATA and sending_dummy='0') else
                             buffer_modcod_mode when (buffer_modcod_mode=1 or buffer_modcod_mode=0) else -- This is needed when using PAPR reduction, to avoid changing modulation.
                             0;

    status_sendingDummy <= sending_dummy;
 
    out_modcod_mode <= scrambler_modcod_mode;
    out_modcod_code <= buffer_modcod_code;

end framer_arch;
