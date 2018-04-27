--
-- Dual Port RAM module that Xilinx software understands
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity infer_ramDualPort is

    generic (
        dataWidth      : integer := 18;
        memSize        : integer := 1024
    );

    port (
        clk: in  std_logic;

        port1_write: in std_logic;
        port1_address: in integer range 0 to memSize-1;
        port1_dataIn: in std_logic_vector(dataWidth-1 downto 0);
        port1_dataOut: out std_logic_vector(dataWidth-1 downto 0);
    
        port2_write: in std_logic;
        port2_address: in integer range 0 to memSize-1;
        port2_dataIn: in std_logic_vector(dataWidth-1 downto 0);
        port2_dataOut: out std_logic_vector(dataWidth-1 downto 0)
    );

end infer_ramDualPort;

architecture infer_ramDualPort_arch of infer_ramDualPort is

  type memType is array (0 to memSize-1) of std_logic_vector(dataWidth-1 downto 0);
  shared variable ram : memType := (others => (others => '0'));
  
  signal port1_read : std_logic_vector(dataWidth-1 downto 0):= (others => '0');
  signal port2_read : std_logic_vector(dataWidth-1 downto 0):= (others => '0');
  
begin

    port1Proc: process (clk)
    begin
        if (rising_edge(clk)) then
            port1_read <= ram(port1_address);
            if port1_write = '1' then
                --report "Port1 writing: " & integer'image(port1_address) & "=>" & integer'image(to_integer(unsigned(port1_dataIn)));
                ram(port1_address) := port1_dataIn;
            end if;
        end if;
    end process;

    port2Proc: process (clk)
    begin
        if (rising_edge(clk)) then
            port2_read <= ram(port2_address);
            if port2_write = '1' then
                --report "Port2 writing: " & integer'image(port2_address) & "=>" & integer'image(to_integer(unsigned(port2_dataIn)));
                ram(port2_address) := port2_dataIn;
            end if;
        end if;
    end process;

    port1_dataOut <= port1_read;
    port2_dataOut <= port2_read;
  
end infer_ramDualPort_arch;
