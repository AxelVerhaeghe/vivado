----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2015 03:09:56 PM
-- Design Name: 
-- Module Name: PWM_measure - Behavioral
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

entity PWM_measure is
    Port (  
            RC_in0 : in STD_LOGIC;
            RC_in1 : in STD_LOGIC;
            RC_in2 : in STD_LOGIC;
            RC_in3 : in STD_LOGIC;
            Clk_in : in STD_LOGIC;
--            RC_interrupt : out STD_LOGIC;
            RC_value0 : out STD_LOGIC_VECTOR (31 downto 0);
            RC_value1 : out STD_LOGIC_VECTOR (31 downto 0);
            RC_value2 : out STD_LOGIC_VECTOR (31 downto 0);
            RC_value3 : out STD_LOGIC_VECTOR (31 downto 0));
end PWM_measure;

architecture Behavioral of PWM_measure is
signal Curr_Count0,Out_Count0 : unsigned(31 downto 0):="00000000000000000000000000000000";
signal Curr_Count1,Out_Count1 : unsigned(31 downto 0):="00000000000000000000000000000000";
signal Curr_Count2,Out_Count2 : unsigned(31 downto 0):="00000000000000000000000000000000";
signal Curr_Count3,Out_Count3 : unsigned(31 downto 0):="00000000000000000000000000000000";
signal counter0,counter1,counter2,counter3: std_logic:='0';--boolean := false;
signal RC_value_sig0,RC_value_sig1, RC_value_sig2, RC_value_sig3: STD_LOGIC_VECTOR(31 downto 0):="00000000000000000000000000000000";
begin
--Increment Curr_Count every clock cycle.This is the max freq which can be measured by the module
process(Clk_in, counter0,counter1, counter2, counter3)
begin
	if(Clk_in'event and Clk_in='1') then
	       if(counter0='1')then --rising_edge(Clk_in) --='1'
                Curr_Count0 <= Curr_Count0 +1 ;--Curr_Count +1;Out_count+1; "11001100110011001100110011001100"
                Out_Count0 <= Curr_Count0;
                RC_value_sig0 <= RC_value_sig0;
           elsif(counter0='0') then
                Curr_Count0 <="00000000000000000000000000000000"; --Curr_count = "00000000000000000000000000000000" 00000000000000000000000011111111
                RC_value_sig0 <= std_logic_vector(Out_Count0);
           end if;
           
           if(counter1='1')then --rising_edge(Clk_in) --='1'
                Curr_Count1 <= Curr_Count1 +1 ;--Curr_Count +1;Out_count+1; "11001100110011001100110011001100"
                Out_Count1 <= Curr_Count1;
--                RC_value1 <= RC_value1;
                RC_value_sig1 <= RC_value_sig1;
           elsif(counter1='0') then
                Curr_Count1 <="00000000000000000000000000000000"; --Curr_count = "00000000000000000000000000000000" 00000000000000000000000011111111
                RC_value_sig1 <= std_logic_vector(Out_Count1);
           end if;
           if(counter2='1')then --rising_edge(Clk_in) --='1'
                Curr_Count2 <= Curr_Count2 +1 ;--Curr_Count +1;Out_count+1; "11001100110011001100110011001100"
                Out_Count2 <= Curr_Count2;
--                RC_value2 <= RC_value2;
                RC_value_sig2 <= RC_value_sig2;
           elsif(counter2='0') then
                Curr_Count2 <="00000000000000000000000000000000"; --Curr_count = "00000000000000000000000000000000" 00000000000000000000000011111111
                RC_value_sig2 <= std_logic_vector(Out_Count2);
           end if;
           if(counter3='1')then --rising_edge(Clk_in) --='1'
                Curr_Count3 <= Curr_Count3 +1 ;--Curr_Count +1;Out_count+1; "11001100110011001100110011001100"
                Out_Count3 <= Curr_Count3;
--                RC_value3 <= RC_value3;
                RC_value_sig3 <= RC_value_sig3;
           elsif(counter3='0') then
                Curr_Count3 <="00000000000000000000000000000000"; --Curr_count = "00000000000000000000000000000000" 00000000000000000000000011111111
                RC_value_sig3 <= std_logic_vector(Out_Count3);
           end if;
           RC_value0 <= RC_value_sig0;
           RC_value1 <= RC_value_sig1;
           RC_value2 <= RC_value_sig2;
           RC_value3 <= RC_value_sig3;
    end if;
    
end process;

--Calculate the time period of the pulse input using the current and previous counts.
process(RC_in0, RC_in1, RC_in2, RC_in3)
begin
counter0 <=RC_in0;
counter1 <=RC_in1;
counter2 <=RC_in2;
counter3 <=RC_in3;
--RC_interrupt <=RC_in;
--    if(RC_in='1') then --RC_in'event and RC_in= '1' || rising_edge(
--        RC_interrupt <= '1'; 
--		counter <= true;
		--Out_Count <=  "00000000000000000000000000000000";  --Re-setting the Prev_Count.
--    end if;    

--	if(falling_edge(RC_in)) then 
--        RC_interrupt <='1';
--		counter <= false;
--		--Out_Count <= Curr_Count;
--    end if;
--	if(RC_in='0') then 
--	elsif(RC_in='0') then
--		RC_interrupt <='0';
--		counter <= false;
--  end if;

end process;
end Behavioral;
