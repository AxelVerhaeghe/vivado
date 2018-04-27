library ieee;
use ieee.std_logic_1164.all;
use work.config.all;
use work.functions.all;

entity fec is
generic(
    numInterleavers: positive := 2; -- The interleaver has a duty cycle of 1/2, thus with 2 you can keep the full throughput. Of course you can put as many as you want to add FIFO stages
    fecConfig: FEC_CONFIG := FEC_CONFIG_DVBT2;
    allowDynamicMODCOD: boolean := true;
    dynamicUserDataWidth: positive := 1
);
port(
    -- Clock
    clk: in std_logic;

    -- Control signals
    -- This signal should be pulsed before the beginning of a frame
    -- to clear the internal state of the block. All settings are read when this is high
    in_frameStart: in std_logic;
    -- And this one at the end of the user data
    in_frameEnd: in std_logic;
    -- This is metadata that is kept with the frame in dynamic MODCOD mode
    in_userData: in std_logic_vector(dynamicUserDataWidth-1 downto 0);
    -- This signal is high when the module is ready to receive a new frame
    out_moduleInputIdle : out std_logic;
   
    -- Interface for reading bits
    in_inputValid: in std_logic;
    in_readyForPreviousBlock: out std_logic;
    in_data: in std_logic;

    -- Interface for writing result cells
    out_outputValid: out std_logic;
    out_nextBlockReady: in std_logic;
    out_data: out std_logic_vector(fecConfig.maxSymbolWidth-1 downto 0);
    out_lastCellOfBlock: out std_logic;
    
    -- Output coding information (optional)
    out_modType: out integer range 0 to fecConfig.maxModulation;  -- The modulation used for this output block (can be different from input when using dynamic MODCOD)
    out_codeRate: out integer range 0 to 23;                      -- The code used for this output block (can be different from input when using dynamic MODCOD)
    out_blockSize: out integer range 0 to 3;                      -- The blocksize for this output block
    out_userData: out std_logic_vector(dynamicUserDataWidth-1 downto 0);

    -- Settings interface
    settings_modType: in integer range 0 to fecConfig.maxModulation; -- The modulation (QPSK, 64QAM, ...)
    settings_codeRate: in integer range 0 to 23; -- The code rate, value depends on the ROM loaded into the FEC block

    -- Slave config interface
    ldpc_slaveReadAddress: out integer range 0 to fecConfig.ldpc_coeffMemorySize-1;
    ldpc_slaveData: in std_logic_vector(17 downto 0)
);
end fec;

architecture fec_arch of fec is
    -- FSM signals
    signal frameStart: std_logic;
    signal moduleInputIdle: std_logic := '1';
    signal frameStartCounter: integer range 0 to 1;
    signal interleaverInUse: std_logic_vector(numInterleavers-1 downto 0) := (others=>'0');
    signal int_configRomValid: std_logic;

    -- Output interface of BCH FEC
    signal bchFEC_outputValid: std_logic;
    signal bchFEC_nextBlockReady: std_logic;
    signal bchFEC_data: std_logic;
    signal bchFEC_frameEnded: std_logic;
    
    -- Which BCH polynomial to use
    signal bchFEC_polynomial: integer range 0 to fecConfig.bch_maxPolynomial; 

    -- Output interfeace of LDPC FEC
    signal ldpcFEC_outputValid: std_logic;
    signal ldpcFEC_nextBlockReady: std_logic;
    signal ldpcFEC_data: std_logic;
    signal ldpcFEC_frameEnded: std_logic;
    signal ldpcFEC_parityWriting: std_logic;
    signal ldpcFEC_metadataIsValid: std_logic;

    -- Inteface to LDPC coefficient memory
    signal ldpcFEC_coeffReadAddress: integer range 0 to fecConfig.ldpc_coeffMemorySize-1;
    signal ldpcFEC_coeffData: std_logic_vector(17 downto 0);

    -- Demux between interleavers and LDPC
    signal int2ldpcFEC_nextBlockReady: std_logic_vector(numInterleavers-1 downto 0);

    -- Interleaver output interface
    signal int_nextBlockReady: std_logic_vector(numInterleavers-1 downto 0);
    signal int_outputValid: std_logic_vector(numInterleavers-1 downto 0);
    signal int_data: std_logic_vector(numInterleavers-1 downto 0);
   
    -- Interleaver configuration ROM interface 
    type int_colAddrType is array (0 to numInterleavers-1) of integer range 0 to fecConfig.interleaver_maxCols;
    signal int_colAddr: int_colAddrType;
    signal int_numCols: int_colAddrType;
    type int_numRowsType is array (0 to numInterleavers-1) of integer range 0 to fecConfig.interleaver_maxRows;
    signal int_numRows: int_numRowsType;
    

    signal int_colTwist: integer range 0 to fecConfig.interleaver_maxTwist;
    signal int_colAddrROM: integer range 0 to fecConfig.interleaver_maxCols;
    signal int_numRowsROM: integer range 0 to fecConfig.interleaver_maxRows;
    signal int_numColsROM: integer range 0 to fecConfig.interleaver_maxCols;

    -- Buffered settings for everything
    signal config_modType: integer range 0 to fecConfig.maxModulation;
    signal config_codeRate: integer range 0 to 23;

    -- Stored MODCOD per interleaver buffer to keep state
    type memory_modTypeType is array (0 to numInterleavers-1) of integer range 0 to fecConfig.maxModulation;
    signal memory_modType: memory_modTypeType;
    type memory_codeRateType is array (0 to numInterleavers-1) of integer range 0 to 23;
    signal memory_codeRate: memory_codeRateType;
    type memory_blockSizeType is array (0 to numInterleavers-1) of integer range 0 to 3;
    signal memory_blockSize: memory_blockSizeType;
    type memory_cellCodeTypeType is array (0 to numInterleavers-1) of integer range 0 to 7;
    signal memory_cellCodeType: memory_cellCodeTypeType;
    type memory_userDataType is array (0 to numInterleavers-1) of std_logic_vector(dynamicUserDataWidth-1 downto 0);
    signal memory_userData: memory_userDataType;

    -- Settings for the cell mapper
    signal extracted_cellCodeType: integer range 0 to 7;
    signal extracted_modType: integer range 0 to fecConfig.maxModulation;
    signal extracted_blockSize: integer range 0 to 3;


    -- Interleaver control signals
    signal int_startFrame: std_logic_vector(numInterleavers-1 downto 0);
    signal int_blockSize: integer range 0 to 3;
    signal int_bypass: std_logic_vector(numInterleavers-1 downto 0);
    signal int_bypassROM: std_logic;
    signal int_done: std_logic_vector(numInterleavers-1 downto 0);
    signal int_doneSelected: std_logic;

    -- Interleaver management signals
    signal interleaver_readingActive: integer range 0 to numInterleavers-1 :=0;
    signal interleaver_writingActive: integer range 0 to numInterleavers-1 :=0;

    -- Interleaver to cell demuxed signals
    signal int2cell_readyForPreviousBlock: std_logic;
    signal int2cell_outputValid: std_logic;
    signal int2cell_data: std_logic;

    -- Cell mapper control signals
    signal cell_start: std_logic := '1';
    signal cell_done: std_logic;
    signal cell_codeType: integer range 0 to 7;
    signal cell_numberOfBits: integer range 0 to fecConfig.cell_outputMaxWidth;

    -- Cell mapper ROM signals
    signal cell_bitIndex: integer range 0 to fecConfig.cell_outputMaxWidth-1;
    signal cell_bitPermutedIndex: integer range 0 to fecConfig.cell_outputMaxWidth-1;
    signal cell_groupedByTwo: std_logic;

    -- Cell mapper output signal of full width
    signal cell_outData: std_logic_vector(fecConfig.cell_outputMaxWidth-1 downto 0);
    signal cell_outputValid: std_logic;

begin

    -- BCH encoding block
    bchFEC_inst: entity work.bch generic map (fecConfig => fecConfig)
                                 port map ( clk => clk,
                                            in_frame_start => frameStart,
                                            in_frame_end => in_frameEnd,
    
                                            in_inputValid => in_inputValid,
                                            in_readyForPreviousBlock => in_readyForPreviousBlock,
                                            in_data => in_data,
    
                                            out_outputValid => bchFEC_outputValid,
                                            out_nextBlockReady => bchFEC_nextBlockReady,
                                            out_data => bchFEC_data,
                                            
                                            bch_polynomial => bchFEC_polynomial, 
    
                                            out_bchFrameEnded=>bchFEC_frameEnded
                                           );
                                           
    -- LDPC encoding block
    ldpc_inst: entity work.ldpc generic map (parityMemoryAddrSize => fecConfig.ldpc_parityMemorySize,
                                             coeffMemoryAddrSize => fecConfig.ldpc_coeffMemorySize)
                                port map ( clk => clk,
                                         in_frame_start => frameStart,
                                         in_bch_end => bchFEC_frameEnded,
                                         code_rateIndex => config_codeRate,

                                         in_inputValid => bchFEC_outputValid,
                                         in_readyForPreviousBlock => bchFEC_nextBlockReady,
                                         in_data => bchFEC_data,

                                         out_outputValid => ldpcFEC_outputValid,
                                         out_nextBlockReady => ldpcFEC_nextBlockReady,
                                         out_data => ldpcFEC_data,

                                         coeff_readAddress => ldpcFEC_coeffReadAddress,
                                         coeff_data => ldpcFEC_coeffData,

                                         bch_polynomial => bchFEC_polynomial,
                                         int_blockSize => int_blockSize,
                                         cell_mapperType => cell_codeType,
                                         metadata_isValid => ldpcFEC_metadataIsValid,

                                         out_ldpcDone => ldpcFEC_frameEnded,
                                         out_ldpcParityWriting => ldpcFEC_parityWriting
                                       );

    -- Bit interleaver block(s)
    intGenerate: for I in 0 to numInterleavers-1 generate
        intDynGenerate: if(allowDynamicMODCOD) generate
            int_inst: entity work.bitinterleave generic map ( interleaverLength => fecConfig.interleaver_maxLength,
                                                              maxRows => fecConfig.interleaver_maxRows,
                                                              maxCols => fecConfig.interleaver_maxCols,
                                                              maxTwist => fecConfig.interleaver_maxTwist,
                                                              doTwist => fecConfig.interleaver_doTwist,
                                                              doParity => fecConfig.interleaver_doParity
                                                            )
                                                port map(   clk => clk,
            
                                                            int_numRows => int_numRows(I),
                                                            int_numCols => int_numCols(I),
        
                                                            col_addr => int_colAddr(I),
                                                            col_twist => int_colTwist, -- This is read in realtime, but only one interleaver can be writing at the same time
        
                                                            in_frame_start => int_startFrame(I),
                                                           
                                                            in_inputValid => ldpcFEC_outputValid,
                                                            in_readyForPreviousBlock => int2ldpcFEC_nextBlockReady(I),
                                                            in_data => ldpcFEC_data,
        
                                                            out_nextBlockReady => int_nextBlockReady(I),
                                                            out_outputValid => int_outputValid(I),
                                                            out_data => int_data(I),
        
                                                            int_ldpcParityWriting => ldpcFEC_parityWriting,
                                                            int_bypass => int_bypass(I),
                                                            int_ldpcDone => ldpcFEC_frameEnded,
        
                                                            out_interleaveDone => int_done(I));
        end generate;
        -- Same thing, but without dynamic modcod buffers
        intStaticGenerate: if(not allowDynamicMODCOD) generate
            int_inst: entity work.bitinterleave generic map ( interleaverLength => fecConfig.interleaver_maxLength,
                                                              maxRows => fecConfig.interleaver_maxRows,
                                                              maxCols => fecConfig.interleaver_maxCols,
                                                              maxTwist => fecConfig.interleaver_maxTwist,
                                                              doTwist => fecConfig.interleaver_doTwist,
                                                              doParity => fecConfig.interleaver_doParity
                                                            )
                                                port map(   clk => clk,
            
                                                            int_numRows => int_numRowsROM,
                                                            int_numCols => int_numColsROM,
        
                                                            col_addr => int_colAddr(I),
                                                            col_twist => int_colTwist, -- This is read in realtime, but only one interleaver can be writing at the same time
        
                                                            in_frame_start => int_startFrame(I),
                                                           
                                                            in_inputValid => ldpcFEC_outputValid,
                                                            in_readyForPreviousBlock => int2ldpcFEC_nextBlockReady(I),
                                                            in_data => ldpcFEC_data,
        
                                                            out_nextBlockReady => int_nextBlockReady(I),
                                                            out_outputValid => int_outputValid(I),
                                                            out_data => int_data(I),
        
                                                            int_ldpcParityWriting => ldpcFEC_parityWriting,
                                                            int_bypass => int_bypassROM,
                                                            int_ldpcDone => ldpcFEC_frameEnded,
        
                                                            out_interleaveDone => int_done(I));
        end generate;
    end generate;

    fecManager: process(clk)
        variable interleaver_writingActive_work: integer range 0 to numInterleavers-1;
        variable interleaver_readingActive_work: integer range 0 to numInterleavers-1;
    begin
        if(rising_edge(clk)) then
            cell_start <= '0';
            -- Handle the interleaver LDPC is writing to
            interleaver_writingActive_work := interleaver_writingActive;
            interleaver_readingActive_work := interleaver_readingActive;

            if(frameStartCounter=0) then
                int_startFrame <= (others =>'0');
                frameStart<='0';
            else
                frameStartCounter <= frameStartCounter - 1;
            end if;

            if(in_frameStart = '1') then -- moduleInputIdle is purposefully not checked. This allows to user to restart the module if the state got unknown.
                                         -- Of course, in normal operation this should not happen, as the next output block will be corrupted.
                frameStart<='1';
                interleaverInUse(interleaver_writingActive_work) <= '1';
                frameStartCounter <= 1;
                config_modType <= settings_modType;
                config_codeRate <= settings_codeRate;
            end if;

            if(ldpcFEC_frameEnded='1' and ldpcFEC_outputValid='1' and int2ldpcFEC_nextBlockReady(interleaver_writingActive_work)='1') then
                -- The interleaver has been fully written, so we can start working on the next one
                if(interleaver_writingActive_work = numInterleavers - 1) then
                    interleaver_writingActive_work := 0;
                else
                    interleaver_writingActive_work := interleaver_writingActive_work + 1;
                end if;
            end if;

                -- Handle the interleaver that the cell mapper reads from
            if(cell_done = '1' and out_nextBlockReady = '1' and cell_outputValid='1') then
                -- The next block just read the last cell in this interleaver/mapper, so it is no longer in use
                interleaverInUse(interleaver_readingActive_work) <= '0';
                -- Advance the counter
                if(interleaver_readingActive_work = numInterleavers - 1) then
                    interleaver_readingActive_work := 0;
                else
                    interleaver_readingActive_work := interleaver_readingActive_work + 1;
                end if;
                -- Start it again
                cell_start <= '1';
            end if;
            
            -- The LDPC block has obtained all settings. Perform lookup in interleaver config memory
            if(ldpcFEC_metadataIsValid='1') then
                -- On the next clock tick we should buffer the critical parameters and switch the interleaver on
                int_configRomValid<='1';
            end if;
            if(int_configRomValid='1') then
                int_configRomValid <= '0';

                -- Store the settings used for the data being loaded into this interleaver. Only needed for dynamic MODCODs
                if(allowDynamicMODCOD) then
                    int_numRows(interleaver_writingActive_work) <= int_numRowsROM;
                    int_numCols(interleaver_writingActive_work) <= int_numColsROM;
                    int_bypass(interleaver_writingActive_work) <= int_bypassROM;
                    memory_modType(interleaver_writingActive_work) <= config_modType;
                    memory_codeRate(interleaver_writingActive_work) <= config_codeRate;
                    memory_blockSize(interleaver_writingActive_work) <= int_blockSize;
                    memory_cellCodeType(interleaver_writingActive_work) <= cell_codeType;
                    memory_userData(interleaver_writingActive_work) <= in_userData;
                end if;

                int_startFrame(interleaver_writingActive_work) <= '1';
            end if;
        end if;
        interleaver_readingActive <= interleaver_readingActive_work;
        interleaver_writingActive <= interleaver_writingActive_work;
    end process;

    moduleInputIdle <= not interleaverInUse(interleaver_writingActive);
    out_moduleInputIdle <= moduleInputIdle;

    interleaverToCell: process(int2cell_readyForPreviousBlock, interleaver_readingActive)
    begin
        int_nextBlockReady <= (others=>'0');
        int_nextBlockReady(interleaver_readingActive) <= int2cell_readyForPreviousBlock;
    end process;
    
    int2cell_outputValid <= int_outputValid(interleaver_readingActive);
    int2cell_data <= int_data(interleaver_readingActive);
    int_doneSelected <= int_done(interleaver_readingActive);

    int_colAddrROM <= int_colAddr(interleaver_writingActive);
    ldpcFEC_nextBlockReady <= int2ldpcFEC_nextBlockReady(interleaver_writingActive);

    -- Cell mapper block
    bit2cell_inst: entity work.bit2cell generic map (outputWidth => fecConfig.cell_outputMaxWidth)
                                        port map( clk                       => clk,

                                                  in_frame_start            => cell_start,

                                                  cell_numberOfBits         => cell_numberOfBits,
                                                  cell_groupedbytwo         => cell_groupedByTwo,

                                                  in_inputValid             => int2cell_outputValid,
                                                  in_readyForPreviousBlock  => int2cell_readyForPreviousBlock,
                                                  in_data                   => int2cell_data,

                                                  lut_bitIndex              => cell_bitIndex,
                                                  lut_bitPermutedIndex      => cell_bitPermutedIndex,

                                                  out_nextBlockReady        => out_nextBlockReady,
                                                  out_outputValid           => cell_outputValid,
                                                  out_data                  => cell_outData,
    
                                                  done_in                   => int_doneSelected,
                                                  done_out                  => cell_done);

    -- LDPC encoding control rom
    ldpc_dvbt2RomGenerate: if(fecConfig.ldpc_controlRom = DVB_T2) generate
        ldpc_controlRom_inst: entity work.fec_control_rom_dvbt2 port map ( clk => clk,
                                                                           fec_control_address => ldpcFEC_coeffReadAddress,
                                                                           fec_control_out => ldpcFEC_coeffData);
    end generate;
    ldpc_dvbs2RomGenerate: if(fecConfig.ldpc_controlRom = DVB_S2) generate
        ldpc_controlRom_inst: entity work.fec_control_rom_dvbs2 port map ( clk => clk,
                                                                           fec_control_address => ldpcFEC_coeffReadAddress,
                                                                           fec_control_out => ldpcFEC_coeffData);
    end generate;
    ldpc_dvbc2RomGenerate: if(fecConfig.ldpc_controlRom = DVB_C2) generate
        ldpc_controlRom_inst: entity work.fec_control_rom_dvbc2 port map ( clk => clk,
                                                                           fec_control_address => ldpcFEC_coeffReadAddress,
                                                                           fec_control_out => ldpcFEC_coeffData);
    end generate;
    ldpc_dvbSlaveRomGenerate: if(fecConfig.ldpc_controlRom = DVB_SLAVE) generate
        ldpcFEC_coeffData <= ldpc_slaveData;
    end generate;
    ldpc_slaveReadAddress <= ldpcFEC_coeffReadAddress;

    -- Interleaver ROM
    -- TODO: Put C2 
    int_dvbt2RomGenerator: if(fecConfig.interleaver_controlRom = DVB_T2) generate
        int_ctrlRom: entity work.bitinterleave_coeff_dvbt2_rom port map( modType => config_modType,
                                                                         blockSize => int_blockSize, 
    
                                                                         col_addr => int_colAddrROM,
    
                                                                         col_twist => int_colTwist,
                                                                         numRows => int_numRowsROM,
                                                                         numCols => int_numColsROM,
                                                                         bypass => int_bypassROM);
    end generate;   
    int_dvbs2RomGenerator: if(fecConfig.interleaver_controlRom = DVB_S2) generate
        int_ctrlRom: entity work.bitinterleave_coeff_dvbs2_rom port map( modType => config_modType,
                                                                         blockSize => int_blockSize, 
    
                                                                         col_addr => int_colAddrROM,
    
                                                                         col_twist => int_colTwist,
                                                                         numRows => int_numRowsROM,
                                                                         numCols => int_numColsROM,
                                                                         bypass => int_bypassROM);
    end generate;   


    -- Cell Mapper ROM (again add C2 andSLAVE mode)
    cell_dvbt2RomGenerator: if(fecConfig.cell_controlRom = DVB_T2) generate
        bit2cellRom_inst: entity work.cell_mapper_rom_dvbt2 port map( codeType => extracted_cellCodeType,
                                                                modType => extracted_modType,
                                                                blockSize => extracted_blockSize,
    
                                                                lut_bitIndex => cell_bitIndex,
                                                                lut_bitPermutedIndex => cell_bitPermutedIndex,
                                                                cell_groupedByTwo => cell_groupedByTwo);

        numberOfBitsProc: process(extracted_modType, cell_groupedByTwo)
        begin
            if(cell_groupedByTwo = '1') then
                case extracted_modType is
                    when 1 => cell_numberOfBits <= 8;
                    when 2 => cell_numberOfBits <= 12;
                    when 3 => cell_numberOfBits <= 16;
                    when others => cell_numberOfBits <= 4;
                end case;
            else
                case extracted_modType is
                    when 0 => cell_numberOfBits <= 2;
                    when 2 => cell_numberOfBits <= 6;
                    when 3 => cell_numberOfBits <= 8;
                    when others => cell_numberOfBits <= 4;
                end case;
            end if;
        end process;
    end generate;
    cell_dvbc2RomGenerator: if(fecConfig.cell_controlRom = DVB_C2) generate
        bit2cellRom_inst: entity work.cell_mapper_rom_dvbc2 port map( codeType => extracted_cellCodeType,
                                                                modType => extracted_modType,
                                                                blockSize => extracted_blockSize,
    
                                                                lut_bitIndex => cell_bitIndex,
                                                                lut_bitPermutedIndex => cell_bitPermutedIndex,
                                                                cell_groupedByTwo => cell_groupedByTwo);

        numberOfBitsProc: process(extracted_modType, cell_groupedByTwo)
        begin
            if(cell_groupedByTwo = '1') then
                case extracted_modType is
                    when 1 => cell_numberOfBits <= 8;
                    when 2 => cell_numberOfBits <= 12;
                    when 3 => cell_numberOfBits <= 16;
                    when 4 => cell_numberOfBits <= 20;
                    when 5 => cell_numberOfBits <= 24;
                    when others => cell_numberOfBits <= 4;
                end case;
            else
                case extracted_modType is
                    when 0 => cell_numberOfBits <= 2;
                    when 2 => cell_numberOfBits <= 6;
                    when 3 => cell_numberOfBits <= 8;
                    when 4 => cell_numberOfBits <= 10;
                    when 5 => cell_numberOfBits <= 12;
                    when others => cell_numberOfBits <= 4;
                end case;
            end if;
        end process;
    end generate;
    cell_dvbs2RomGenerator: if(fecConfig.cell_controlRom = DVB_S2) generate
        bit2cellRom_inst: entity work.cell_mapper_rom_dvbs2 port map( codeType => extracted_cellCodeType,
                                                                modType => extracted_modType,
                                                                blockSize => extracted_blockSize,
    
                                                                lut_bitIndex => cell_bitIndex,
                                                                lut_bitPermutedIndex => cell_bitPermutedIndex,
                                                                cell_groupedByTwo => cell_groupedByTwo);

        numberOfBitsProc: process(extracted_modType)
        begin
            case extracted_modType is
                when 0 => cell_numberOfBits <= 2;
                when 2 => cell_numberOfBits <= 4;
                when 3 => cell_numberOfBits <= 5;
                when others => cell_numberOfBits <= 3;
            end case;
        end process;
    end generate;

    -- Extract symbol from output
    out_data <= cell_outData (fecConfig.maxSymbolWidth-1 downto 0);
    out_outputValid <= cell_outputValid;            
    out_lastCellOfBlock <= cell_done;
    
    -- Extract cell mapper settings from MODCOD memory, or from input
    dynCellGenerate: if(allowDynamicMODCOD) generate
        --To cell mapper
        extracted_modType <= memory_modType(interleaver_readingActive);
        extracted_blockSize <= memory_blockSize(interleaver_readingActive);
        extracted_cellCodeType <= memory_cellCodeType(interleaver_readingActive);

        -- To next block
        out_modType <= memory_modType(interleaver_readingActive);
        out_codeRate <= memory_codeRate(interleaver_readingActive);
        out_blockSize <= memory_blockSize(interleaver_readingActive);
        out_userData <= memory_userData(interleaver_readingActive);
    end generate;

    staticCellGenerate: if(not allowDynamicMODCOD) generate
        -- To cell mapper
        extracted_cellCodeType <= cell_codeType;
        extracted_modType <= config_modType;
        extracted_blockSize <= int_blockSize;

        -- To next block
        out_modType <= config_modType;
        out_codeRate <= config_codeRate;
        out_blockSize <= int_blockSize;
    end generate;

end fec_arch;
