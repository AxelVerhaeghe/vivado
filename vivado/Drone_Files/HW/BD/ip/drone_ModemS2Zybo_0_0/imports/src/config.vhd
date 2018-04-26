library ieee;
use ieee.std_logic_1164.all;


package config is

    type BCH_POLY_TYPE is (DVB_T2, DVB_S2C2, DVB_S2X);
    type LDPC_ROM_TYPE is (DVB_T2, DVB_C2, DVB_S2, DVB_SLAVE);
    type INT_ROM_TYPE is (DVB_T2, DVB_C2, DVB_S2); 
    type CELL_ROM_TYPE is (DVB_T2, DVB_C2, DVB_S2, DVB_SLAVE); 

    type FEC_CONFIG is record
        maxModulation: positive;
        maxSymbolWidth: positive;

        bch_maxPolynomial: positive;
        bch_polynomialType: BCH_POLY_TYPE;

        ldpc_parityMemorySize: positive;
        ldpc_coeffMemorySize: positive;
        ldpc_controlRom: LDPC_ROM_TYPE;

        interleaver_maxLength: positive;
        interleaver_maxRows: positive;
        interleaver_maxCols: positive;
        interleaver_maxTwist: integer;
        interleaver_doTwist: boolean;
        interleaver_doParity: boolean;
        interleaver_controlRom: INT_ROM_TYPE;

        cell_outputMaxWidth: positive;
        cell_controlRom: CELL_ROM_TYPE;
    end record FEC_CONFIG;

    constant FEC_CONFIG_DVBS2: FEC_CONFIG := (maxModulation => 3, 
                                              maxSymbolWidth => 5, --32APSK

                                              bch_maxPolynomial => 3,
                                              bch_polynomialType => DVB_S2C2,

                                              ldpc_parityMemorySize => 2420,
                                              ldpc_coeffMemorySize => 6240,
                                              ldpc_controlRom => DVB_S2,

                                              interleaver_maxLength => 64800,
                                              interleaver_maxRows => 21600,
                                              interleaver_maxCols => 5,
                                              interleaver_maxTwist => 0,
                                              interleaver_doTwist => false,
                                              interleaver_doParity => false,
                                              interleaver_controlRom => DVB_S2,

                                              cell_outputMaxWidth => 5,
                                              cell_controlRom => DVB_S2
                                            );
    
    constant FEC_CONFIG_DVBT2: FEC_CONFIG := (maxModulation => 3, 
                                              maxSymbolWidth => 8, --256QAM

                                              bch_maxPolynomial => 3,
                                              bch_polynomialType => DVB_T2,

                                              ldpc_parityMemorySize => 1820,
                                              ldpc_coeffMemorySize => 4096, 
                                              ldpc_controlRom => DVB_T2,

                                              interleaver_maxLength => 64800,
                                              interleaver_maxRows => 8100,
                                              interleaver_maxCols => 16,
                                              interleaver_maxTwist => 32,
                                              interleaver_doTwist => true,
                                              interleaver_doParity => true,
                                              interleaver_controlRom => DVB_T2,

                                              cell_outputMaxWidth => 16,
                                              cell_controlRom => DVB_T2
                                            );
    
end config;
