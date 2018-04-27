----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Wouter Devriese
-- 
-- Create Date: 01/04/2016 02:18:13 PM
-- Design Name: kill_switch_RC
-- Module Name: kill_switch - Behavioral
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

entity kill_switch is
    Port ( pwm0 : in STD_LOGIC;
           pwm1 : in STD_LOGIC;
           pwm2 : in STD_LOGIC;
           pwm3 : in STD_LOGIC;
           clk : in STD_LOGIC; -- based on a 100MHz clock
           rc_kill : in STD_LOGIC;
           heartbeat: in STD_LOGIC;
           total_kill_out: out STD_LOGIC;
           kill_RC_out: out STD_LOGIC;
           kill_ns_out: out STD_LOGIC;
           kill_hb_out: out STD_LOGIC;
           counter_out: out STD_LOGIC;
           pwmo_0 : out STD_LOGIC;
           pwmo_1 : out STD_LOGIC;
           pwmo_2 : out STD_LOGIC;
           pwmo_3 : out STD_LOGIC);
end kill_switch;

architecture Behavioral of kill_switch is
signal count, count_no_signal, count_hb : unsigned(31 downto 0):="00000000000000000000000000000000";
signal counter_on, counter_hb: std_logic :='0';
signal kill_RC, kill_ns, kill_hb: std_logic :='0'; -- kill from RC / no signal from RC / kill because no heartbeat arrived
signal hb: std_logic:='0'; --heartbeat from software
signal hb_high, hb_edge: std_logic;
signal Rc_kill_output: std_logic:='0';
begin
--counter
hb_high<=heartbeat;
hb_edge<=heartbeat;

process(clk, counter_on, counter_hb)
begin 
    if(clk'event and clk = '1') then
        if(counter_on='1')then
            count <= count+1;
            count_no_signal <="00000000000000000000000000000000";
        else
            count <="00000000000000000000000000000000";
            count_no_signal <= count_no_signal+1; -- count how long there is no input signal from RC
        end if;
        if(to_integer(unsigned(count_hb))<15000000) then
            count_hb <= count_hb+1;
            counter_hb<='1';
        else
            count_hb <="00000000000000000000000000000000";
            counter_hb<='0';
        end if;
    end if;
    
end process;
--when to count
process(clk, rc_kill, count, counter_on)
begin
if(rising_edge(clk)) then
   if(rc_kill='1') then counter_on <= '1'; --start measuring the rc_kill pulse length
    elsif(to_integer(unsigned(count))=200000)then -- we count up to 250000 then we wait for the next rc_kill pulse
                counter_on <= '0';
   end if;
end if;
counter_out<=counter_on;
end process;

-- kill gets value from input signal
process(clk, count,rc_kill, kill_RC)
begin
    if(rising_edge(clk)) then
        if(to_integer(unsigned(count))=125000) then
            kill_RC <= not rc_kill; --kill signal gets ~rc_kill signal
        end if;
    end if;
    kill_RC_out<=kill_RC;
end process;

-- if no change in heartbeat monitor detected for 0.01 s: kill (software hangs)
process(hb_high, hb_edge, counter_hb )
begin

if(counter_hb='0') then
        hb <='1'; -- reset heartbeat
elsif(rising_edge(hb_edge)) then 
        hb <= '0';
else    hb <= hb;
end if;

end process;

process(clk, count_hb, kill_hb, hb)
begin
if(rising_edge(clk)) then
    if(to_integer(unsigned(count_hb))=10000000) then --0.01s
           kill_hb <= hb;
           --count_hb<="00000000000000000000000000000000";
    end if;
end if;
kill_hb_out<=kill_hb;
end process;
-- if no signal detected for 1 sec kill
process(clk, kill_ns,count_no_signal, counter_on)
begin
if(rising_edge(clk)) then
    if(counter_on='1') then kill_ns <= '0';
    elsif(to_integer(unsigned(count_no_signal))>50000000) then
        kill_ns <= '1'; --kill signal gets ~rc_kill signal
    end if;
end if;
    --rc_kill_out<=kill_ns;
    kill_ns_out<=kill_ns;
end process;

process(kill_RC, kill_hb, kill_ns,pwm0,pwm1,pwm2,pwm3, Rc_kill_output, counter_on)--kill_ns,
begin
    if(kill_RC='0' and kill_hb='0' and kill_ns='0') then -- 
        Rc_kill_output <= '0'; --
        pwmo_0 <= pwm0;
        pwmo_1 <= pwm1;
        pwmo_2 <= pwm2;
        pwmo_3 <= pwm3;
    else
        Rc_kill_output <= '1'; --
        pwmo_0<='0';
        pwmo_1<='0';
        pwmo_2<='0';
        pwmo_3<='0';
     end if;
     total_kill_out <= counter_on;--Rc_kill_output;
end process;

end Behavioral;
