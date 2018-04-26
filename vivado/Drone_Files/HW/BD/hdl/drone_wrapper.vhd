--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Mar 12 15:10:34 2018
--Host        : pc-klas3-3.esat.kuleuven.be running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target drone_wrapper.bd
--Design      : drone_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity drone_wrapper is
  port (
    BL : out STD_LOGIC;
    BR : out STD_LOGIC;
    Core0_nIRQ : in STD_LOGIC;
    Core1_nIRQ : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FL : out STD_LOGIC;
    FR : out STD_LOGIC;
    HDMI_OEN : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mode_switch : in STD_LOGIC;
    PWM_inductive : out STD_LOGIC;
    Sonar : in STD_LOGIC;
    Sounder : out STD_LOGIC;
    TMDS_clk_n : in STD_LOGIC;
    TMDS_clk_p : in STD_LOGIC;
    TMDS_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aile : in STD_LOGIC;
    ddc_scl_io : inout STD_LOGIC;
    ddc_sda_io : inout STD_LOGIC;
    elev : in STD_LOGIC;
    gpio_testpin_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_hpd_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic_0_scl_io : inout STD_LOGIC;
    iic_0_sda_io : inout STD_LOGIC;
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mode_inductive : in STD_LOGIC;
    rc_kill : in STD_LOGIC;
    rc_kill_out : out STD_LOGIC;
    rudd : in STD_LOGIC;
    throttle : in STD_LOGIC;
    tuner : in STD_LOGIC
  );
end drone_wrapper;

architecture STRUCTURE of drone_wrapper is
  component drone is
  port (
    DDC_scl_i : in STD_LOGIC;
    DDC_scl_o : out STD_LOGIC;
    DDC_scl_t : out STD_LOGIC;
    DDC_sda_i : in STD_LOGIC;
    DDC_sda_o : out STD_LOGIC;
    DDC_sda_t : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    TMDS_clk_p : in STD_LOGIC;
    TMDS_clk_n : in STD_LOGIC;
    TMDS_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_hpd_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_testpin_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    HDMI_OEN : out STD_LOGIC_VECTOR ( 0 to 0 );
    rudd : in STD_LOGIC;
    rc_kill : in STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    rc_kill_out : out STD_LOGIC;
    FL : out STD_LOGIC;
    FR : out STD_LOGIC;
    BL : out STD_LOGIC;
    BR : out STD_LOGIC;
    Core0_nIRQ : in STD_LOGIC;
    Core1_nIRQ : in STD_LOGIC;
    throttle : in STD_LOGIC;
    aile : in STD_LOGIC;
    elev : in STD_LOGIC;
    Mode_switch : in STD_LOGIC;
    Sonar : in STD_LOGIC;
    Sounder : out STD_LOGIC;
    PWM_inductive : out STD_LOGIC;
    tuner : in STD_LOGIC;
    mode_inductive : in STD_LOGIC
  );
  end component drone;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ddc_scl_i : STD_LOGIC;
  signal ddc_scl_o : STD_LOGIC;
  signal ddc_scl_t : STD_LOGIC;
  signal ddc_sda_i : STD_LOGIC;
  signal ddc_sda_o : STD_LOGIC;
  signal ddc_sda_t : STD_LOGIC;
  signal iic_0_scl_i : STD_LOGIC;
  signal iic_0_scl_o : STD_LOGIC;
  signal iic_0_scl_t : STD_LOGIC;
  signal iic_0_sda_i : STD_LOGIC;
  signal iic_0_sda_o : STD_LOGIC;
  signal iic_0_sda_t : STD_LOGIC;
begin
ddc_scl_iobuf: component IOBUF
     port map (
      I => ddc_scl_o,
      IO => ddc_scl_io,
      O => ddc_scl_i,
      T => ddc_scl_t
    );
ddc_sda_iobuf: component IOBUF
     port map (
      I => ddc_sda_o,
      IO => ddc_sda_io,
      O => ddc_sda_i,
      T => ddc_sda_t
    );
drone_i: component drone
     port map (
      BL => BL,
      BR => BR,
      Core0_nIRQ => Core0_nIRQ,
      Core1_nIRQ => Core1_nIRQ,
      DDC_scl_i => ddc_scl_i,
      DDC_scl_o => ddc_scl_o,
      DDC_scl_t => ddc_scl_t,
      DDC_sda_i => ddc_sda_i,
      DDC_sda_o => ddc_sda_o,
      DDC_sda_t => ddc_sda_t,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK_CLK0 => FCLK_CLK0,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      FL => FL,
      FR => FR,
      HDMI_OEN(0) => HDMI_OEN(0),
      IIC_0_scl_i => iic_0_scl_i,
      IIC_0_scl_o => iic_0_scl_o,
      IIC_0_scl_t => iic_0_scl_t,
      IIC_0_sda_i => iic_0_sda_i,
      IIC_0_sda_o => iic_0_sda_o,
      IIC_0_sda_t => iic_0_sda_t,
      Mode_switch => Mode_switch,
      PWM_inductive => PWM_inductive,
      Sonar => Sonar,
      Sounder => Sounder,
      TMDS_clk_n => TMDS_clk_n,
      TMDS_clk_p => TMDS_clk_p,
      TMDS_data_n(2 downto 0) => TMDS_data_n(2 downto 0),
      TMDS_data_p(2 downto 0) => TMDS_data_p(2 downto 0),
      aile => aile,
      elev => elev,
      gpio_testpin_tri_o(0) => gpio_testpin_tri_o(0),
      hdmi_hpd_tri_o(0) => hdmi_hpd_tri_o(0),
      leds_4bits_tri_o(3 downto 0) => leds_4bits_tri_o(3 downto 0),
      mode_inductive => mode_inductive,
      rc_kill => rc_kill,
      rc_kill_out => rc_kill_out,
      rudd => rudd,
      throttle => throttle,
      tuner => tuner
    );
iic_0_scl_iobuf: component IOBUF
     port map (
      I => iic_0_scl_o,
      IO => iic_0_scl_io,
      O => iic_0_scl_i,
      T => iic_0_scl_t
    );
iic_0_sda_iobuf: component IOBUF
     port map (
      I => iic_0_sda_o,
      IO => iic_0_sda_io,
      O => iic_0_sda_i,
      T => iic_0_sda_t
    );
end STRUCTURE;
