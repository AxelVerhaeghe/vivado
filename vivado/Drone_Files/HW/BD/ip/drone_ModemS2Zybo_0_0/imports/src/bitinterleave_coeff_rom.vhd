library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bitinterleave_coeff_dvbs2_rom is
port(
    modType: in integer range 0 to 3; --0=QPSK (nop), 1=8PSK 2=16APSK 3=32APSK
    blockSize: in integer range 0 to 1;
    col_addr: in integer range 0 to 0;
    col_twist: out integer range 0 to 0;
    numRows: out integer range 0 to 21600;
    numCols: out integer range 0 to 5;
    bypass: out std_logic
);
end bitinterleave_coeff_dvbs2_rom;  

architecture bitinterleave_coeff_dvbs2_rom_arch of bitinterleave_coeff_dvbs2_rom is
begin

    settingsProc: process (blockSize, modType)
    begin
    	col_twist <= 0;
        bypass <='0';
        if(modType = 0) then -- QPSK
            bypass <='1';
        end if;
        if(blockSize = 1) then      --16200
            if(modType = 1) then
                numCols <= 3;
                numRows <= 5400;
            elsif(modType = 2) then
                numCols <= 4;
                numRows <= 4050;
            else
                numCols <= 5;
                numRows <= 3240;
            end if;
        else
            if(modType = 1) then
                numCols <= 3;
                numRows <= 21600;
            elsif(modType = 2) then
                numCols <= 4;
                numRows <= 16200;
            else
                numCols <= 5;
                numRows <= 12960;
            end if;
        end if;
    end process;


end bitinterleave_coeff_dvbs2_rom_arch;

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bitinterleave_coeff_dvbt2_rom is
port(
    modType: in integer range 0 to 3; --0=QPSK (nop), 1=16QAM 2=64QAM 3=256QAM
    blockSize: in integer range 0 to 1;
    col_addr: in integer range 0 to 16;
    col_twist: out integer range 0 to 32;
    numRows: out integer range 0 to 8100;
    numCols: out integer range 0 to 16;
    bypass: out std_logic
);
end bitinterleave_coeff_dvbt2_rom;  

architecture bitinterleave_coeff_dvbt2_rom_arch of bitinterleave_coeff_dvbt2_rom is
begin

    settingsProc: process (blockSize, modType)
    begin
        bypass <='0';
        if(modType = 0) then -- QPSK
            bypass <='1';
        end if;
        if(blockSize = 1) then      --16200
            if(modType = 1 or modType=3) then    --16/256 QAM
                numCols <= 8;
                numRows <= 2025;
            else
                numCols <= 12;
                numRows <= 1350;
            end if;
        else
            if(modType = 1) then
                numCols <= 8;
                numRows <= 8100;
            elsif(modType = 3) then
                numCols <= 16;
                numRows <= 4050;
            else
                numCols <= 12;
                numRows <= 5400;
            end if;
        end if;
    end process;

    dvbt2Table: process(col_addr, modType, blockSize)
    begin
        if(blockSize = 1) then      --16200
            if(modType = 1 or modType=3) then    --16/256 QAM
                case col_addr is
                    when 3 => col_twist <= 1;
                    when 4 => col_twist <= 7;
                    when 5 => col_twist <= 20;
                    when 6 => col_twist <= 20;
                    when 7 => col_twist <= 21;
                    when others => col_twist <= 0;
                end case;
            else
                case col_addr is
                    when 3 => col_twist <= 2;
                    when 4 => col_twist <= 2;
                    when 5 => col_twist <= 2;
                    when 6 => col_twist <= 3;
                    when 7 => col_twist <= 3;
                    when 8 => col_twist <= 3;
                    when 9 => col_twist <= 6;
                    when 10 => col_twist <= 7;
                    when 11 => col_twist <= 7;
                    when others => col_twist <= 0;
                end case;
            end if;
        else                        --64800
            if(modType = 1) then    --16 QAM
                case col_addr is
                    when 2 => col_twist <= 2;
                    when 3 => col_twist <= 4;
                    when 4 => col_twist <= 4;
                    when 5 => col_twist <= 5;
                    when 6 => col_twist <= 7;
                    when 7 => col_twist <= 7;
                    when others => col_twist <= 0;
                end case;
            elsif(modType = 3) then --256 QAM
                case col_addr is
                    when 1 => col_twist <= 2;
                    when 2 => col_twist <= 2;
                    when 3 => col_twist <= 2;
                    when 4 => col_twist <= 2;
                    when 5 => col_twist <= 3;
                    when 6 => col_twist <= 7;
                    when 7 => col_twist <= 15;
                    when 8 => col_twist <= 16;
                    when 9 => col_twist <= 20;
                    when 10 => col_twist <= 22;
                    when 11 => col_twist <= 22;
                    when 12 => col_twist <= 27;
                    when 13 => col_twist <= 27;
                    when 14 => col_twist <= 28;
                    when 15 => col_twist <= 32;
                    when others => col_twist <= 0;
                end case;
            else --64 QAM
                case col_addr is
                    when 2 => col_twist <= 2;
                    when 3 => col_twist <= 2;
                    when 4 => col_twist <= 3;
                    when 5 => col_twist <= 4;
                    when 6 => col_twist <= 4;
                    when 7 => col_twist <= 5;
                    when 8 => col_twist <= 5;
                    when 9 => col_twist <= 7;
                    when 10 => col_twist <= 8;
                    when 11 => col_twist <= 9;
                    when others => col_twist <= 0;
                end case;
            end if;
        end if;
    end process;


end bitinterleave_coeff_dvbt2_rom_arch;

