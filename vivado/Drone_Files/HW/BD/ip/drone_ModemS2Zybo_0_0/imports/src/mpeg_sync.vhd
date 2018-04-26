library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity mpeg_sync is
    generic (
        frame_delay: positive := 5
    );
    port(
        clk: in std_logic;
        ctrl_reset: in std_logic;

        --Input MPEG data
        in_inputValid: in std_logic;
        in_readyForPreviousBlock: out std_logic;
        in_data: in std_logic_vector(7 downto 0);
        
        --Output synced MPEG data
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out std_logic_vector(7 downto 0);
        out_sync: out std_logic;

        --Status signals
        status_lock: out std_logic --One when sync found and stable

    );
end mpeg_sync;

architecture mpeg_sync_arch of mpeg_sync is
    signal mpegByteCounter: integer range 0 to 187 := 0;
    signal mpeg_readyForPreviousBlock: std_logic;

    signal syncValid: std_logic := '0';
    signal syncWasCorrect: std_logic := '0';
    signal syncCounter: integer range 0 to frame_delay-1 := 0;

    signal syncFound: std_logic := '0';
begin

    syncProc: process(clk)
    begin
        if(rising_edge(clk)) then
            if(ctrl_reset = '1') then
                syncValid <= '0';
                syncFound <= '0';
            else
                if(in_inputValid='1' and mpeg_readyForPreviousBlock='1') then
                    if(syncValid = '0') then
                        mpegByteCounter<=1;
                        syncCounter <= 0;
                        -- Potential sync candidate
                        if(in_data = x"47") then
                            syncValid <= '1';
                            syncWasCorrect <= '1';
                        end if;
                    else
                        if(mpegByteCounter = 187) then
                            mpegByteCounter <= 0;
                            -- We only update the sync found at a packet boundrary, so the next blocks
                            -- don't need to care about data length. Every block they get is 188 bytes
                            -- long. (although it may be corrupt if the sync is not valid)
                            syncFound <= '0';
                            if(syncWasCorrect = '1') then
                                if(syncCounter < frame_delay-1) then
                                    syncCounter <= syncCounter + 1;
                                else
                                    syncFound <='1';
                                end if;
                            else
                                syncValid <= '0';
                            end if;
                        else
                            mpegByteCounter <= mpegByteCounter + 1;
                        end if;
                        if(mpegByteCounter = 0) then
                            -- If we are aligned to the sync, this byte should be 0x47
                            if(in_data = x"47") then
                                -- Yes
                                syncWasCorrect <= '1';
                            else
                                -- Nope, search for another potential sync
                                syncWasCorrect <= '0';
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    status_lock <= syncFound;

    -- Read data as fast as we can until sync has been obtained
    mpeg_readyForPreviousBlock <= '1' when (syncFound = '0') else out_nextBlockReady;
    in_readyForPreviousBlock <= mpeg_readyForPreviousBlock;
    -- But don't give it to the next block
    out_outputValid <= '0' when (syncFound = '0') else in_inputValid;
    -- Pass data through
    out_data <= x"47" when (mpegByteCounter=0) else in_data;
    out_sync <= '1' when (mpegByteCounter=0) else '0';
end mpeg_sync_arch;
