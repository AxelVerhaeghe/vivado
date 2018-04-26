library ieee;
use ieee.std_logic_1164.all;


package sampleType is

    constant scalarSample_maxValue: positive := 127;

    subtype scalarSample is integer range -scalarSample_maxValue to scalarSample_maxValue;

    type complexSample is record
        I: scalarSample;
        Q: scalarSample;
    end record complexSample;
    
end sampleType;
