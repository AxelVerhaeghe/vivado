library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.sampleType.all;


entity tx_wrapperZybo is
    port(
        clk: in std_logic;
        
        -- MPEG input
        mpeg_input0_data: in std_logic_vector(7 downto 0);
        mpeg_input0_inputValid: in std_logic;
        mpeg_input0_readyForPreviousBlock: out std_logic;
        
        -- Output config
        out_data_config: in std_logic_vector(3 downto 0);
        
        -- Select rolloff factor
        modem_rolloff_config: in std_logic_vector(1 downto 0);
        
        -- CIC Interpolation rate
        modem_int_config: in std_logic_vector(4 downto 0);
        
        --Gain
        modem_gain: in std_logic_vector(9 downto 0);

        -- Control interfaces
        ctrl_reset: in std_logic;
        ctrl_padNull: in std_logic;
        ctrl_allowDummy: in std_logic;
        ctrl_pilot: in std_logic;
        ctrl_blockSize: in std_logic;
        ctrl_nullPid: in std_logic_vector(7 downto 0);
        ctrl_modCod: in std_logic_vector(4 downto 0);

        -- Status interfaces
        status_muxSyncLock: out std_logic_vector(0 downto 0);
        status_muxFrameOut: out std_logic;
        status_muxNullFrameOut: out std_logic;
        status_sendingDummy: out std_logic;

        -- Output to FIFO
        fifo_data: out std_logic_vector(31 downto 0);
        fifo_full: in std_logic;
        fifo_wr_en: out std_logic

    );
end tx_wrapperZybo;

architecture tx_wrapperZybo_arch of tx_wrapperZybo is
    signal combineState: std_logic := '0';
    
    -- TX interface
    signal tx_outputValid: std_logic;
    signal tx_nextBlockReady: std_logic;
    signal tx_dataC: complexSample;
    signal tx_dataI: std_logic_vector(7 downto 0);
    signal tx_dataQ: std_logic_vector(7 downto 0);
    
    -- Filter interface
    signal filter_outputValid: std_logic;
    signal filter_nextBlockReady: std_logic;
    signal filter_data: std_logic_vector(31 downto 0);
    signal filter_dataUnsigned: std_logic_vector(15 downto 0);
    
    -- Filter config interface
    signal filterConfig_inputValid: std_logic;
    signal filterConfig_nextBlockReady: std_logic;
    signal filterConfig_data: std_logic_vector(7 downto 0) := (others=>'0');
    
    signal modem_rolloff_configCurrent: std_logic_vector(1 downto 0) := "00"; --00 is the startup value of the filter
    signal modem_modCod: integer range 0 to 31;

    -- I and Q combined
    signal tx_data: std_logic_vector(15 downto 0);

    -- Two samples combined
    signal fifo_buffer: std_logic_vector(31 downto 0);
    
    signal out_dataI_invert: std_logic;
    signal out_dataQ_invert: std_logic;
    signal out_data_swap16: std_logic;
    signal out_data_swap32: std_logic;
    
    signal tx_reset: std_logic;
    
    -- Signals from MUX
    signal mux_outputValid: std_logic;
    signal mux_nextBlockReady: std_logic;
    signal mux_data: std_logic_vector(7 downto 0);
    signal mux_sync: std_logic;
    
    -- Signals to MUX
    signal muxin_inputValid: std_logic_vector(0 downto 0);
    signal muxin_readyForPreviousBlock: std_logic_vector(0 downto 0);
    signal muxin_data: std_logic_vector(7 downto 0);


    -- Entitiy instantiation gives problems when compiling
    component fir_compiler_0_1 is
    port (
        aclk : IN STD_LOGIC;
        s_axis_data_tvalid : IN STD_LOGIC;
        s_axis_data_tready : OUT STD_LOGIC;
        s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        s_axis_config_tvalid : IN STD_LOGIC;
        s_axis_config_tready : OUT STD_LOGIC;
        s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component fir_compiler_0_1;
    
    signal cic_inI: std_logic_vector(15 downto 0);
    signal cic_inQ: std_logic_vector(15 downto 0);
    
    signal cic_outI: std_logic_vector(15 downto 0);
    signal cic_outQ: std_logic_vector(15 downto 0);
    
    signal cic_outIGain: integer range -1023 to 1023;
    signal cic_outQGain: integer range -1023 to 1023;
    signal cic_outIGainClipped: integer range -127 to 127;
    signal cic_outQGainClipped: integer range -127 to 127;
    
    signal modem_gainInt: integer range 0 to 1023;
        
    signal cic_nextBlockReady: std_logic;
    signal cic_outputValid: std_logic;
    
    signal cicConfig_inputValid: std_logic;
    signal cicConfig_nextBlockReady: std_logic;
    signal cicConfig_data: std_logic_vector(7 downto 0)  := (others=>'0');
    
    signal cicConfig_interpolation: std_logic_vector(4 downto 0);
    signal cicConfig_interpolationOld: std_logic_vector(4 downto 0) := (others=>'0');
    
    component cic_compiler_0_1 is
      PORT (
      aclk : IN STD_LOGIC;
      s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_config_tvalid : IN STD_LOGIC;
      s_axis_config_tready : OUT STD_LOGIC;
      s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_data_tvalid : IN STD_LOGIC;
      s_axis_data_tready : OUT STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tready : IN STD_LOGIC;
      event_halted : OUT STD_LOGIC
    );
    end component cic_compiler_0_1;

begin

    muxin_inputValid(0) <= mpeg_input0_inputValid;
    mpeg_input0_readyForPreviousBlock <= muxin_readyForPreviousBlock(0);
    muxin_data <= mpeg_input0_data;

    out_dataI_invert <= out_data_config(0);
    out_dataQ_invert <= out_data_config(1);
    out_data_swap16  <= out_data_config(2);
    out_data_swap32  <= out_data_config(3);

    tx_inst: entity work.tx port map(
        clk => clk,
        out_nextBlockReady => tx_nextBlockReady,
        out_outputValid => tx_outputValid,
        out_data => tx_dataC,
        
        in_inputValid => mux_outputValid,
        in_readyForPreviousBlock => mux_nextBlockReady,
        in_data => mux_data,
        in_sync => mux_sync,
        
        ctrl_reset => tx_reset,
        ctrl_rolloff => modem_rolloff_configCurrent,
        ctrl_allowDummy => ctrl_allowDummy,
        ctrl_pilot => ctrl_pilot,
        ctrl_blockSize => ctrl_blockSize,
        ctrl_modcod_id => modem_modCod,

        status_sendingDummy => status_sendingDummy
    );

    modem_modCod <= to_integer(unsigned(ctrl_modCod));
    modem_gainInt <= to_integer(unsigned(modem_gain));
  

    hardMux: entity work.mpeg_mux generic map (num_channels => 1)
                                     port map (clk        => clk,
                                               ctrl_reset => ctrl_reset,
                                               ctrl_resetOut => tx_reset,
   
                                               ctrl_padNull => ctrl_padNull,
                                               ctrl_nullPid => ctrl_nullPid,
   
                                               out_outputValid => mux_outputValid,
                                               out_nextBlockReady => mux_nextBlockReady,
                                               out_data => mux_data,
                                               out_sync => mux_sync,
   
                                               status_sync_lock => status_muxSyncLock,
                                               status_mux_frameOut => status_muxFrameOut,
                                               status_mux_nullFrameOut => status_muxNullFrameOut,

                                               in_inputValid => muxin_inputValid,
                                               in_readyForPreviousBlock => muxin_readyForPreviousBlock,
                                               in_data => muxin_data);



    combineProc: process(clk)
    begin
        if(rising_edge(clk)) then
            fifo_wr_en <= '0';
            if(combineState = '0') then
                if(cic_outputValid = '1') then
                    fifo_buffer(15 downto 0) <= filter_dataUnsigned(15 downto 8) & filter_dataUnsigned(7 downto 0);
                    combineState <= '1';
                end if;
            else
                if(cic_outputValid = '1' and cic_nextBlockReady='1') then
                    fifo_buffer(31 downto 16) <= filter_dataUnsigned(15 downto 8) & filter_dataUnsigned(7 downto 0);
                    combineState <= '0';
                    fifo_wr_en <= '1';
                end if;
            end if;
        end if;
    end process;


    cic_nextBlockReady <= '1' when combineState='0' else
                             '1' when combineState='1' and fifo_full='0' else
                             '0';
               
    --TX_DATA is filtered for RRC pulseshape
    rrcFilter: fir_compiler_0_1 port map( aclk => clk,
                                        s_axis_data_tvalid => tx_outputValid,
                                        s_axis_data_tready => tx_nextBlockReady,
                                        s_axis_data_tdata => tx_data,
                                        
                                        m_axis_data_tvalid => filter_outputValid,
                                        m_axis_data_tready => filter_nextBlockReady,
                                        m_axis_data_tdata => filter_data,
                                       
                                        s_axis_config_tvalid => filterConfig_inputValid,
                                        s_axis_config_tready => filterConfig_nextBlockReady,
                                        s_axis_config_tdata => filterConfig_data);
                                        
    cic_inI <= "000000" & filter_data(9 downto 0);
    cic_inQ <= "000000" & filter_data(25 downto 16);
                                        
    cicI: cic_compiler_0_1 port map( aclk => clk,
                                    s_axis_data_tvalid => filter_outputValid,
                                    s_axis_data_tready => filter_nextBlockReady,
                                    s_axis_data_tdata => cic_inI,
                                    
                                    m_axis_data_tvalid => cic_outputValid,
                                    m_axis_data_tready => cic_nextBlockReady,
                                    m_axis_data_tdata => cic_outI,
                                   
                                    s_axis_config_tvalid => cicConfig_inputValid,
                                    s_axis_config_tready => cicConfig_nextBlockReady,
                                    s_axis_config_tdata => cicConfig_data);
                                    
                                                                            
    cicQ: cic_compiler_0_1 port map( aclk => clk,
                                    s_axis_data_tvalid => filter_outputValid,
                                    --s_axis_data_tready => filter_nextBlockReady,
                                    s_axis_data_tdata => cic_inQ,
                                    
                                    --m_axis_data_tvalid => cic_outputValid,
                                    m_axis_data_tready => cic_nextBlockReady,
                                    m_axis_data_tdata => cic_outQ,
                                   
                                    s_axis_config_tvalid => cicConfig_inputValid,
                                    s_axis_config_tdata => cicConfig_data);

      
    fifo_data <= fifo_buffer when out_data_swap32 = '0' else
                 fifo_buffer(15 downto 0) & fifo_buffer(31 downto 16);
                 
                 
    filterConfig_data(1 downto 0) <= modem_rolloff_config;
    
    configProcFilter: process(clk)
    begin
        if(rising_edge(clk)) then
            filterConfig_inputValid <= '0';
            if(modem_rolloff_config /= modem_rolloff_configCurrent) then
                -- Tell the filter to load the correct coefficients
                filterConfig_inputValid <= '1';
                -- Wait for the filter to be ready to get a new configuration
                if(filterConfig_nextBlockReady='1') then
                    modem_rolloff_configCurrent <= modem_rolloff_config;
                end if;
            end if;
        end if;
    end process;
    
    configProcCIC: process(clk)
    begin
        if(rising_edge(clk)) then
            cicConfig_inputValid <= '0';
            if(cicConfig_interpolation /= cicConfig_interpolationOld) then
                -- Tell the filter to load the correct coefficients
                cicConfig_inputValid <= '1';
                -- Wait for the filter to be ready to get a new configuration
                if(cicConfig_nextBlockReady='1') then
                    cicConfig_interpolationOld <= cicConfig_interpolation;
                end if;
            end if;
        end if;
    end process;
    
    cicConfig_interpolation <= modem_int_config;
    cicConfig_data(4 downto 0) <= cicConfig_interpolation;
    
    tx_dataI <= std_logic_vector(to_signed(tx_dataC.I, 8)) when out_dataI_invert='0' else
                 std_logic_vector(to_signed(-tx_dataC.I, 8));

    tx_dataQ <= std_logic_vector(to_signed(tx_dataC.Q, 8)) when out_dataQ_invert='0' else
                 std_logic_vector(to_signed(-tx_dataC.Q, 8));
                 
    tx_data <= tx_dataI & tx_dataQ when out_data_swap16 = '0' else 
               tx_dataQ & tx_dataI;
                              
    cic_outIGain <= modem_gainInt * to_integer(signed(cic_outI(9 downto 0)))/512;                          
    cic_outQGain <= modem_gainInt * to_integer(signed(cic_outQ(9 downto 0)))/512;

    cic_outIGainClipped <=  127 when (cic_outIGain > 127) else
                           -127 when (cic_outIGain < -127) else
                            cic_outIGain;             
    
    cic_outQGainClipped <=  127 when (cic_outQGain > 127) else
                           -127 when (cic_outQGain < -127) else
                            cic_outQGain;             
                              
    filter_dataUnsigned <=  std_logic_vector(to_unsigned(cic_outQGainClipped + 128,8)) &
                            std_logic_vector(to_unsigned(cic_outIGainClipped + 128,8)); 
end tx_wrapperZybo_arch;
