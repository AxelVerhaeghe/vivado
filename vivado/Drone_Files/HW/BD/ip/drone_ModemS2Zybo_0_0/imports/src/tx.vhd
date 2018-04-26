library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.sampleType.all;
use work.config.all;

entity tx is
    port(
        clk: in std_logic;
        
        ctrl_reset: in std_logic;
        -- Control interface
        ctrl_rolloff: in std_logic_vector(1 downto 0);
        ctrl_allowDummy: in std_logic;             -- Send dummy frames 
        ctrl_pilot: in std_logic;                  -- Setting this to 1 enables pilot transmission
        ctrl_blockSize: in std_logic;       	    -- 0 = 64k
        ctrl_modcod_id: in integer range 0 to 31;  -- See Table 12 in the standard for values (4 is baseline QPSK 1/2)

        -- Interface for MPEG2 bytes
        in_inputValid: in std_logic;
        in_readyForPreviousBlock: out std_logic;
        in_data: in std_logic_vector(7 downto 0);
        in_sync: in std_logic;

        -- Output to mixer
        out_outputValid: out std_logic;
        out_nextBlockReady: in std_logic;
        out_data: out complexSample;

        status_sendingDummy: out std_logic
    );
end tx;

architecture tx_arch of tx is
    signal inputProcessing_frameEnd: std_logic;
    signal inputProcessing_frameStart: std_logic;

    signal inputProcessing_outputValid: std_logic;
    signal inputProcessing_nextBlockReady: std_logic;
    signal inputProcessing_data: std_logic;

    signal setting_codeRate: integer range 0 to 23;
    signal setting_modType: integer range 0 to 3; -- QPSK, 8PSK, 16APSK, 32APSK
    signal setting_userData: std_logic_vector(5 downto 0);
   
    signal fec_codeRate: integer range 0 to 23;
    signal fec_modType: integer range 0 to 3;
    signal fec_blockSize: integer range 0 to 3; --0=64800, 1=16200, 2=32400 (not used here)
    signal fec_userData: std_logic_vector(5 downto 0);

    signal framer_code: integer range 0 to 7;
    signal framer_modCodeId: integer range 0 to 31; 
    signal framer_pilot: std_logic;
    signal framer_blockSize: std_logic;

    signal fec_inputIdle: std_logic;

    signal fec_outputValid: std_logic;
    signal fec_nextBlockReady: std_logic;
    signal fec_outData: std_logic_vector(4 downto 0);
    signal fec_lastCellOfBlock: std_logic := '0';

    signal framer_outputValid: std_logic;
    signal framer_nextBlockReady: std_logic;
    signal framer_outData: std_logic_vector(4 downto 0);

    signal ctrl_modcod_id_buf: integer range 0 to 31;
    signal ctrl_modcod_id_safe: integer range 0 to 31;
    
    signal framer_modcod_mode: integer range 0 to 3;
    signal framer_modcod_code: integer range 0 to 7;
    signal framer_postMapR: std_logic_vector(1 downto 0);
begin

    inputProcessing_inst: entity work.inputProcessing port map (clk => clk, 
                                                                ctrl_reset => ctrl_reset,
                                                                ctrl_LDPCCode => setting_codeRate, 
                                                                ctrl_fragmentation => '1',
                                                                ctrl_FECInputIdle => fec_inputIdle, 
                                                                ctrl_bbFrameEnd => inputProcessing_frameEnd,
                                                                ctrl_bbFrameStart => inputProcessing_frameStart,
                                                                ctrl_rolloff => ctrl_rolloff,

      								ctrl_modcod_id_in => ctrl_modcod_id,
				                                ctrl_modcod_id_out => ctrl_modcod_id_buf,
                                                               
                                                                in_inputValid => in_inputValid,
                                                                in_readyForPreviousBLock => in_readyForPreviousBlock,
                                                                in_data => in_data,
                                                                ctrl_sync => in_sync,

                                                                out_outputValid => inputProcessing_outputValid,
                                                                out_nextBlockReady => inputProcessing_nextBlockReady,
                                                                out_data => inputProcessing_data);
 


    fec_inst: entity work.fec generic map ( fecConfig => FEC_CONFIG_DVBS2,
                                            numInterleavers => 2,
                                            dynamicUserDataWidth => 6) 
                                 port map ( clk => clk,
                                            in_frameStart => inputProcessing_frameStart,
                                            in_frameEnd => inputProcessing_frameEnd,
   
                                            in_inputValid => inputProcessing_outputValid,
                                            in_data => inputProcessing_data,
                                            in_readyForPreviousBlock => inputProcessing_nextBlockReady,
    
                                            out_outputValid => fec_outputValid,
                                            out_nextBlockReady => fec_nextBlockReady,
                                            out_data => fec_outData,
                                            out_lastCellOfBlock => fec_lastCellOfBlock,
    
                                            out_moduleInputIdle => fec_inputIdle,

                                            settings_modType => setting_modType,
                                            settings_codeRate => setting_codeRate,
                                            in_userData => setting_userData,
                                           
                                            out_modType => fec_modType, 
                                            out_codeRate => fec_codeRate,
                                            out_blockSize => fec_blockSize,
                                            out_userData => fec_userData,
                                            
                                            ldpc_slaveData => (others=>'0')
                                       );

    framer_inst: entity work.framer port map (clk => clk,
		  			                          ctrl_pilot => framer_pilot, 
                                              ctrl_allowDummy => ctrl_allowDummy,

                                              in_inputValid => fec_outputValid,
                                              in_readyForPreviousBlock => fec_nextBlockReady,
                                              in_data => fec_outData,
                                              in_last => fec_lastCellOfBlock,

                                              out_outputValid => framer_outputValid,
                                              out_nextBlockReady => framer_nextBlockReady,
                                              out_data => framer_outData,
                                              out_modcod_mode => framer_modcod_mode,
                                              out_modcod_code => framer_modcod_code,
                                              out_postMapR => framer_postMapR,

                                              in_modcod_mode => fec_modType,
                                              in_modcod_code => framer_code,
                                              in_modcod_blocksize => framer_blockSize,
                                              in_modcod_id => framer_modCodeId,

                                              status_sendingDummy=>status_sendingDummy
                                         );
                                         
    mapper: entity work.symbol_mapper port map (clk => clk,
                                                in_inputValid => framer_outputValid,
                                                in_readyForPreviousBlock => framer_nextBlockReady,
                                                in_data => framer_outData,
                                                in_postMapR => framer_postMapR,

                                                out_outputValid => out_outputValid,
                                                out_nextBlockReady => out_nextBlockReady,
                                                out_data => out_data,

                                                modcod_mode => framer_modcod_mode,
                                                modcod_code => framer_modcod_code
                                              );

    framer_blockSize <= '0' when fec_blockSize=0 else '1';
    
    framer_code <= 1 when (fec_codeRate = 5 or fec_codeRate = 15) else
                   2 when (fec_codeRate = 6 or fec_codeRate = 16) else
                   3 when (fec_codeRate = 7 or fec_codeRate = 17) else
                   4 when (fec_codeRate = 8 or fec_codeRate = 18) else
                   5 when (fec_codeRate = 9 or fec_codeRate = 19) else
                   6 when (fec_codeRate = 20) else
                   0;

    setting_userData <= ctrl_pilot & std_logic_vector(to_unsigned(ctrl_modcod_id_safe, 5));

    framer_modCodeId <= to_integer(unsigned(fec_userData(4 downto 0)));
    framer_pilot <= fec_userData(5);

    -- The modulator may generate very ugly signals or hang if an unsupported modcod is requested.
    ctrl_modcod_id_safe <= ctrl_modcod_id_buf when (ctrl_modcod_id_buf > 1 and ctrl_modcod_id_buf < 29) else
		           4; --QPSK 1/2

    modCodProc: process(ctrl_modcod_id_safe)
        variable codeRate: integer range 0 to 23;
        variable modType: integer range 0 to 3;
    begin
        case ctrl_modcod_id_safe is
            --when 1 => --QPSK 1/4
            --    codeRate := 0;
            --    modType := 0;
            when 2 => --QPSK 1/3
                codeRate := 3;
                modType := 0;
            when 3 => --QPSK 2/5
                codeRate := 2;
                modType := 0;
            when 4 => --QPSK 1/2
                codeRate := 1;
                modType := 0;
            when 5 => --QPSK 3/5
                codeRate := 4;
                modType := 0;
            when 6 => --QPSK 2/3
                codeRate := 5;
                modType := 0;
            when 7 => --QPSK 3/4
                codeRate := 6;
                modType := 0;
            when 8 => --QPSK 4/5
                codeRate := 7;
                modType := 0;
            when 9 => --QPSK 5/6
                codeRate := 8;
                modType := 0;
            when 10 => --QPSK 8/9
                codeRate := 9;
                modType := 0;
            when 11 => --QPSK 9/10
                codeRate := 10;
                modType := 0;
            when 12 => --8PSK 3/5
                codeRate := 4;
                modType := 1;
            when 13 => --8PSK 2/3 
                codeRate := 5;
                modType := 1;
            when 14 => --8PSK 3/4 
                codeRate := 6;
                modType := 1;
            when 15 => --8PSK 5/6
                codeRate := 8;
                modType := 1; 
            when 16 => --8PSK 8/9
                codeRate := 9;
                modType := 1;
            when 17 => --8PSK 9/10
                codeRate := 10;
                modType := 1;
            when 18 => --16APSK 2/3 
                codeRate := 5;
                modType := 2;
            when 19 => --16APSK 3/4
                codeRate := 6;
                modType := 2;
            when 20 => --16APSK 4/5
                codeRate := 7;
                modType := 2;
            when 21 => --16APSK 5/6
                codeRate := 8;
                modType := 2;
            when 22 => --16APSK 8/9
                codeRate := 9;
                modType := 2;
            when 23 => --16APSK 9/10
                codeRate := 10;
                modType := 2;
            when 24 => --32APSK 3/4
                codeRate := 6;
                modType := 3;
            when 25 => --32APSK 4/5
                codeRate := 7;
                modType := 3;
            when 26 => --32APSK 5/6
                codeRate := 8;
                modType := 3;
            when 27 => --32APSK 8/9
                codeRate := 9;
                modType := 3;
            when others => --32APSK 9/10
                codeRate := 10;
                modType := 3;
        end case;
        
        if(ctrl_blockSize = '0') then
            codeRate := codeRate + 10;
        end if;
        
        setting_modType <= modType;
        setting_codeRate <= codeRate;

    end process;
    
    

end tx_arch;
