----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/22/2015 12:06:33 PM
-- Design Name: 
-- Module Name: PWM_AXI - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_AXI is
    Port ( Clk : in STD_LOGIC;
--           high_trigger: out STD_LOGIC;
--           period_trigger: out STD_LOGIC;
           PWM0 : out STD_LOGIC;
           PWM1 : out STD_LOGIC;
           PWM2 : out STD_LOGIC;
           period : in STD_LOGIC_VECTOR (31 downto 0); -- time for period
           high_time0 : in STD_LOGIC_VECTOR (31 downto 0); -- high time less than period (gets calculated in C, high_time is percent of period)
           high_time1 : in STD_LOGIC_VECTOR (31 downto 0); -- high time less than period (gets calculated in C, high_time is percent of period)
           high_time2 : in STD_LOGIC_VECTOR (31 downto 0)); -- high time less than period (gets calculated in C, high_time is percent of period)
end PWM_AXI;

architecture Behavioral of PWM_AXI is
signal pwm_reg0, pwm_reg1, pwm_reg2:std_logic:='0';
signal counter: integer:=0;
signal reset: std_logic:='0';
signal high_time0_reg: STD_LOGIC_VECTOR(31 downto 0); -- Buffer high time during one PWM cycle
signal high_time1_reg: STD_LOGIC_VECTOR(31 downto 0); -- Buffer high time during one PWM cycle
signal high_time2_reg: STD_LOGIC_VECTOR(31 downto 0); -- Buffer high time during one PWM cycle

begin
        process(Clk)
        begin 
            if(rising_edge(Clk))then
                PWM0 <=pwm_reg0;
                PWM1 <=pwm_reg1;
                PWM2 <=pwm_reg2;
                if reset = '0'
                     then 
                        counter <= counter +1;
                 else 
                    counter <= 0;
                    high_time0_reg <= high_time0;
                    high_time1_reg <= high_time1;
                    high_time2_reg <= high_time2;
                end if;
            end if;
         end process;
         process(counter, period)
                 begin
                      if(counter < unsigned(period))
                          then 
--                            period_trigger <= '1';
                            reset <='0';
                          else 
--                            period_trigger <= '0';
                            reset <= '1';
                      end if;
         end process;
         process(counter, high_time0_reg, high_time1_reg, high_time2_reg)
         begin
             if(counter < unsigned(high_time0_reg))
                then 
                    pwm_reg0 <= '1';
--                    high_trigger <= '1';
              else 
                    pwm_reg0 <= '0';
--                    high_trigger <= '0';
              end if;
              if(counter < unsigned(high_time1_reg))
              then 
                  pwm_reg1 <= '1';
              else 
                  pwm_reg1 <= '0';
              end if;
              if(counter < unsigned(high_time2_reg))
              then 
                  pwm_reg2 <= '1';
              else 
                  pwm_reg2 <= '0';
              end if;
         end process;

           
       
end Behavioral;
