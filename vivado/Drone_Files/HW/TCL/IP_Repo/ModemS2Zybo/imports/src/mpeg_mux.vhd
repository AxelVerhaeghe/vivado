library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity mpeg_mux is
    generic (
        -- Number of channels to mux. Note that PIDs should be unique to an input channel.
        -- The only exception are NULL frames, which are allowed on all interfaces simultaneously
        num_channels : positive := 1;
        sync_frame_delay: positive := 5
    );
    port(
        clk: in std_logic;
        ctrl_reset: in std_logic;
        ctrl_resetOut: out std_logic;

        --Control signals
        ctrl_padNull: in std_logic; --Fill up remaining bandwidth with null frames.

        -- Normally the null packed PID is 0x1FFF, but this is discarded by the receiver.
        -- For debugging you may want to change this to something else so it looks like a
        -- normal data channel.
        -- Null packets received on the input ports will be converted to what is set here.
        -- The continuity counter will be updated and valid.
        -- PS: It also makes a nice channel to use for bit-error rate testing.
        ctrl_nullPid: in std_logic_vector(7 downto 0);
        
        --Input for individual streams (note that the data has been concatenated
        --instead of using array to work around tool limitation)
        in_data: in std_logic_vector(num_channels*8-1 downto 0);
        in_inputValid: in std_logic_vector(num_channels-1 downto 0);
        in_readyForPreviousBlock: out std_logic_vector(num_channels-1 downto 0);


        --Output synced MPEG data
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out std_logic_vector(7 downto 0);
        out_sync: out std_logic;

        --Status signals
        status_sync_lock: out std_logic_vector(num_channels-1 downto 0);
        status_mux_frameOut: out std_logic;
        status_mux_nullFrameOut: out std_logic
    );
end mpeg_mux;

architecture mpeg_mux_arch of mpeg_mux is
    type MUX_STATE_TYPE is (RESET, DECIDE_FRAME, SEND_DATA, SEND_NULL);
    signal mux_state: MUX_STATE_TYPE := RESET;   

    signal mpeg_byteCounter: integer range 0 to 187;

    -- Reset the sync blocks upon resetting the MUX
    signal sync_index: integer range 0 to num_channels-1;
    signal sync_indexInUse: integer range 0 to num_channels-1;
    signal sync_hot: std_logic; 
    
    signal sync_reset: std_logic; 
    signal sync_outputValidAll: std_logic_vector(num_channels-1 downto 0);
    signal sync_outputValid: std_logic;
    signal sync_nextBlockReadyAll: std_logic_vector(num_channels-1 downto 0);
    signal sync_nextBlockReady: std_logic;
    signal sync_sync: std_logic_vector(num_channels-1 downto 0);

    type SYNC_DATA_TYPE is array (0 to num_channels-1) of std_logic_vector(7 downto 0);
    signal sync_dataAll: SYNC_DATA_TYPE;
    signal sync_data: std_logic_vector(7 downto 0);

    signal sendNull: std_logic;
    signal nullPacket_data: std_logic_vector(7 downto 0);
    signal nullPacket_counter: integer range 0 to 15;
    signal data_pidCanBeNull: std_logic;
begin

    muxProc: process(clk)
    begin
        if(rising_edge(clk)) then
            status_mux_frameOut <= '0';
            status_mux_nullFrameOut <= '0';
            if(ctrl_reset = '1') then
                mux_state <= RESET;
            else
                case mux_state is
                    when RESET =>
                        mux_State <= DECIDE_FRAME;
                        data_pidCanBeNull <= '0';
                    when DECIDE_FRAME =>
                        mpeg_byteCounter <= 0;

                        sendNull <= '0';
                        if(sendNull = '1') then
                            status_mux_nullFrameOut <= '1';
                            -- Update the sequence number of the null packet (not strictly
                            -- needed according to the standard, but handy for debugging).
                            if(nullPacket_counter < 15) then
                                nullPacket_counter <= nullPacket_counter + 1;
                            else
                                nullPacket_counter <= 0;
                            end if;
                        end if;

                        -- Check if any syncers have data
                        if(sync_hot = '1') then
                            -- Yes, copy the index and start sending data
                            sync_indexInUse <= sync_index;
                            status_mux_frameOut <= '1';
                            mux_state <= SEND_DATA;
                            -- If we are here then the sync byte should
                            -- ready for transmission, if not something
                            -- went completely wrong.
                            if(sync_sync(sync_index) = '0') then
                                mux_state <= RESET;
                            end if;
                        else
                            -- No, maybe send a null packet?
                            if(ctrl_padNull = '1') then
                                sendNull <= '1';
                                status_mux_frameOut <= '1';
                                mux_State <= SEND_NULL;
                            end if;
                        end if;
                    when SEND_NULL => 
                        -- This is null packet we insert ourselves, there is no
                        -- data read from the sync
                        if(out_nextBlockReady = '1') then
                            if(mpeg_byteCounter < 187) then
                                mpeg_byteCounter <= mpeg_byteCounter + 1;
                            else
                                mux_State <= DECIDE_FRAME;
                            end if;
                        end if;
                    when SEND_DATA => 
                        -- Send 188 bytes of data packet, but check if it 
                        -- is a null packet and nuke it with our own.
                        if(out_nextBlockReady = '1' and sync_outputValid = '1') then
                            data_pidCanBeNull <= '0';
                            if(mpeg_byteCounter = 1) then
                                if(sync_data(4 downto 0) = "11111") then
                                    data_pidCanBeNull <= '1';
                                end if;
                            elsif(mpeg_byteCounter = 2) then
                                if((sync_data = x"FF" or sync_data = ctrl_nullPid) and data_pidCanBeNull = '1') then
                                    -- This is a null packet, replace the data with our NULL packet
                                    sendNull <= '1';
                                end if;
                            end if;
                            if(mpeg_byteCounter < 187) then
                                mpeg_byteCounter <= mpeg_byteCounter + 1;
                            else
                                mux_State <= DECIDE_FRAME;
                            end if;
                        end if;
                end case;
            end if;
        end if;
    end process;

    syncFindHot: process(sync_outputValidAll)
    begin
        sync_index <= 0;
        sync_hot <= '0';
        for I in 0 to num_channels-1 loop
            if(sync_outputValidAll(I) = '1') then
                -- This one is hot
                sync_hot <= '1';
                sync_index <= I;
            end if;
        end loop;
    end process;

    mpegNullPacket: process(mpeg_byteCounter)
    begin
        case mpeg_byteCounter is
            when 0 => nullPacket_data <= x"47"; -- Sync 0x47
            when 1 => nullPacket_data <= x"1F"; -- PID 0x1F(FF)
            when 2 => nullPacket_data <= ctrl_nullPid;
            when 3 => -- Not scrambled, no adaptation field, sequence number
                      nullPacket_data <= x"1" & std_logic_vector(to_unsigned(nullPacket_counter,4)); 
            when others => 
                      nullPacket_data <= x"42"; -- Dummy data 'B'
        end case;
    end process;

    sync_reset <= '1' when mux_state = RESET else '0';
    ctrl_resetOut <= sync_reset;

    -- Generate num_channels sync blocks
    syncers: for I in 0 to num_channels-1 generate
        sync_inst: entity work.mpeg_sync generic map (frame_delay => sync_frame_delay )
                                         port map (
                                            clk => clk,
                                            ctrl_reset => sync_reset,

                                            out_outputValid => sync_outputValidAll(I),
                                            out_nextBlockReady => sync_nextBlockReadyAll(I),
                                            out_data => sync_dataAll(I),
                                            out_sync => sync_sync(I),

                                            status_lock => status_sync_lock(I),

                                            in_inputValid => in_inputValid(I),
                                            in_readyForPreviousBlock => in_readyForPreviousBlock(I),
                                            in_data => in_data(8*I+7 downto 8*I)
                                         );
    end generate;

    sync_data <= sync_dataAll(sync_indexInUse);

    syncNextBlockReadyProc: process(sync_indexInUse, sync_nextBlockReady)
    begin
        sync_nextBlockReadyAll <= (others=>'0');
        sync_nextBlockReadyAll(sync_indexInUse) <= sync_nextBlockReady;    
    end process;

    sync_outputValid <= sync_outputValidAll(sync_indexInUse);

    out_outputValid <= '1'              when mux_state = SEND_NULL else
                       sync_outputValid when mux_state = SEND_DATA else
                       '0';

    out_data <= nullPacket_data when (sync_data = x"FF" and data_pidCanBeNull = '1') or sendNull='1' else
                sync_data;
                      
    out_sync <= sync_sync(sync_indexInUse) when mux_state = SEND_DATA else
                '1'                        when mpeg_byteCounter = 0 else
                '0';

    sync_nextBlockReady <= out_nextBlockReady when mux_state = SEND_DATA else '0';

end mpeg_mux_arch;
