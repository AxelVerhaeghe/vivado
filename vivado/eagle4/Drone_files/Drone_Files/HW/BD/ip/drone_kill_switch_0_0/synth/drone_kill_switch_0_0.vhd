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

-- IP VLNV: kuleuven.be:user:kill_switch:1.0
-- IP Revision: 47

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY drone_kill_switch_0_0 IS
  PORT (
    pwm0 : IN STD_LOGIC;
    pwm1 : IN STD_LOGIC;
    pwm2 : IN STD_LOGIC;
    pwm3 : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rc_kill : IN STD_LOGIC;
    heartbeat : IN STD_LOGIC;
    total_kill_out : OUT STD_LOGIC;
    kill_RC_out : OUT STD_LOGIC;
    kill_ns_out : OUT STD_LOGIC;
    kill_hb_out : OUT STD_LOGIC;
    counter_out : OUT STD_LOGIC;
    pwmo_0 : OUT STD_LOGIC;
    pwmo_1 : OUT STD_LOGIC;
    pwmo_2 : OUT STD_LOGIC;
    pwmo_3 : OUT STD_LOGIC
  );
END drone_kill_switch_0_0;

ARCHITECTURE drone_kill_switch_0_0_arch OF drone_kill_switch_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF drone_kill_switch_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT kill_switch IS
    PORT (
      pwm0 : IN STD_LOGIC;
      pwm1 : IN STD_LOGIC;
      pwm2 : IN STD_LOGIC;
      pwm3 : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      rc_kill : IN STD_LOGIC;
      heartbeat : IN STD_LOGIC;
      total_kill_out : OUT STD_LOGIC;
      kill_RC_out : OUT STD_LOGIC;
      kill_ns_out : OUT STD_LOGIC;
      kill_hb_out : OUT STD_LOGIC;
      counter_out : OUT STD_LOGIC;
      pwmo_0 : OUT STD_LOGIC;
      pwmo_1 : OUT STD_LOGIC;
      pwmo_2 : OUT STD_LOGIC;
      pwmo_3 : OUT STD_LOGIC
    );
  END COMPONENT kill_switch;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF drone_kill_switch_0_0_arch: ARCHITECTURE IS "kill_switch,Vivado 2016.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF drone_kill_switch_0_0_arch : ARCHITECTURE IS "drone_kill_switch_0_0,kill_switch,{}";
BEGIN
  U0 : kill_switch
    PORT MAP (
      pwm0 => pwm0,
      pwm1 => pwm1,
      pwm2 => pwm2,
      pwm3 => pwm3,
      clk => clk,
      rc_kill => rc_kill,
      heartbeat => heartbeat,
      total_kill_out => total_kill_out,
      kill_RC_out => kill_RC_out,
      kill_ns_out => kill_ns_out,
      kill_hb_out => kill_hb_out,
      counter_out => counter_out,
      pwmo_0 => pwmo_0,
      pwmo_1 => pwmo_1,
      pwmo_2 => pwmo_2,
      pwmo_3 => pwmo_3
    );
END drone_kill_switch_0_0_arch;
