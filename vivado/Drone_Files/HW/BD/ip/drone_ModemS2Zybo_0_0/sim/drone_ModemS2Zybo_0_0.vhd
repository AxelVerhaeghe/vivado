-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:ModemS2Zybo:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY drone_ModemS2Zybo_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    mpeg_input0_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    mpeg_input0_inputValid : IN STD_LOGIC;
    mpeg_input0_readyForPreviousBlock : OUT STD_LOGIC;
    out_data_config : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    modem_rolloff_config : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    modem_int_config : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    modem_gain : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    ctrl_reset : IN STD_LOGIC;
    ctrl_padNull : IN STD_LOGIC;
    ctrl_allowDummy : IN STD_LOGIC;
    ctrl_pilot : IN STD_LOGIC;
    ctrl_blockSize : IN STD_LOGIC;
    ctrl_nullPid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctrl_modCod : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    status_muxSyncLock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    status_muxFrameOut : OUT STD_LOGIC;
    status_muxNullFrameOut : OUT STD_LOGIC;
    status_sendingDummy : OUT STD_LOGIC;
    fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_full : IN STD_LOGIC;
    fifo_wr_en : OUT STD_LOGIC
  );
END drone_ModemS2Zybo_0_0;

ARCHITECTURE drone_ModemS2Zybo_0_0_arch OF drone_ModemS2Zybo_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF drone_ModemS2Zybo_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT tx_wrapperZybo IS
    PORT (
      clk : IN STD_LOGIC;
      mpeg_input0_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      mpeg_input0_inputValid : IN STD_LOGIC;
      mpeg_input0_readyForPreviousBlock : OUT STD_LOGIC;
      out_data_config : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      modem_rolloff_config : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      modem_int_config : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      modem_gain : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      ctrl_reset : IN STD_LOGIC;
      ctrl_padNull : IN STD_LOGIC;
      ctrl_allowDummy : IN STD_LOGIC;
      ctrl_pilot : IN STD_LOGIC;
      ctrl_blockSize : IN STD_LOGIC;
      ctrl_nullPid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ctrl_modCod : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      status_muxSyncLock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      status_muxFrameOut : OUT STD_LOGIC;
      status_muxNullFrameOut : OUT STD_LOGIC;
      status_sendingDummy : OUT STD_LOGIC;
      fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_full : IN STD_LOGIC;
      fifo_wr_en : OUT STD_LOGIC
    );
  END COMPONENT tx_wrapperZybo;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ctrl_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 ctrl_reset RST";
BEGIN
  U0 : tx_wrapperZybo
    PORT MAP (
      clk => clk,
      mpeg_input0_data => mpeg_input0_data,
      mpeg_input0_inputValid => mpeg_input0_inputValid,
      mpeg_input0_readyForPreviousBlock => mpeg_input0_readyForPreviousBlock,
      out_data_config => out_data_config,
      modem_rolloff_config => modem_rolloff_config,
      modem_int_config => modem_int_config,
      modem_gain => modem_gain,
      ctrl_reset => ctrl_reset,
      ctrl_padNull => ctrl_padNull,
      ctrl_allowDummy => ctrl_allowDummy,
      ctrl_pilot => ctrl_pilot,
      ctrl_blockSize => ctrl_blockSize,
      ctrl_nullPid => ctrl_nullPid,
      ctrl_modCod => ctrl_modCod,
      status_muxSyncLock => status_muxSyncLock,
      status_muxFrameOut => status_muxFrameOut,
      status_muxNullFrameOut => status_muxNullFrameOut,
      status_sendingDummy => status_sendingDummy,
      fifo_data => fifo_data,
      fifo_full => fifo_full,
      fifo_wr_en => fifo_wr_en
    );
END drone_ModemS2Zybo_0_0_arch;
