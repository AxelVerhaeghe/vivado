--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Mar 12 15:10:34 2018
--Host        : pc-klas3-3.esat.kuleuven.be running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target drone.bd
--Design      : drone
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1B3V6J9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1B3V6J9;

architecture STRUCTURE of m00_couplers_imp_1B3V6J9 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_4K4S7M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_4K4S7M;

architecture STRUCTURE of m00_couplers_imp_4K4S7M is
  component drone_m00_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_m00_data_fifo_0;
  component drone_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_m00_regslice_0;
  component drone_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_pc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_pc_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_auto_pc_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_regslice_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_regslice_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_regslice_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= m00_regslice_to_m00_couplers_ARID(1 downto 0);
  M_AXI_arlen(3 downto 0) <= m00_regslice_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= m00_regslice_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_regslice_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m00_regslice_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_regslice_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_regslice_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_regslice_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= m00_regslice_to_m00_couplers_AWID(1 downto 0);
  M_AXI_awlen(3 downto 0) <= m00_regslice_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= m00_regslice_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_regslice_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m00_regslice_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_regslice_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= m00_regslice_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(1 downto 0) <= m00_regslice_to_m00_couplers_WID(1 downto 0);
  M_AXI_wlast <= m00_regslice_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= m00_regslice_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m00_couplers_to_m00_data_fifo_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_data_fifo_AWREADY;
  S_AXI_bid(1 downto 0) <= m00_couplers_to_m00_data_fifo_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_data_fifo_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_m00_data_fifo_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m00_couplers_to_m00_data_fifo_RID(1 downto 0);
  S_AXI_rlast <= m00_couplers_to_m00_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_data_fifo_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_data_fifo_WREADY;
  m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_data_fifo_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_data_fifo_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_data_fifo_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_m00_data_fifo_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_data_fifo_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_m00_data_fifo_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  m00_regslice_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  m00_regslice_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
auto_pc: component drone_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => auto_pc_to_m00_regslice_ARID(1 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_pc_to_m00_regslice_AWID(1 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      m_axi_bid(1 downto 0) => auto_pc_to_m00_regslice_BID(1 downto 0),
      m_axi_bready => auto_pc_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      m_axi_rid(1 downto 0) => auto_pc_to_m00_regslice_RID(1 downto 0),
      m_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      m_axi_rready => auto_pc_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      m_axi_wid(1 downto 0) => auto_pc_to_m00_regslice_WID(1 downto 0),
      m_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      m_axi_wready => auto_pc_to_m00_regslice_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m00_data_fifo_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_data_fifo_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_data_fifo_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => m00_data_fifo_to_auto_pc_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m00_data_fifo_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_data_fifo_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_data_fifo_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_data_fifo_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_data_fifo_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_data_fifo_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_data_fifo_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_data_fifo_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_data_fifo_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_data_fifo_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_data_fifo_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m00_data_fifo_to_auto_pc_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m00_data_fifo_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_data_fifo_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_data_fifo_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_data_fifo_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_data_fifo_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_data_fifo_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_data_fifo_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_data_fifo_to_auto_pc_AWVALID,
      s_axi_bid(1 downto 0) => m00_data_fifo_to_auto_pc_BID(1 downto 0),
      s_axi_bready => m00_data_fifo_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_data_fifo_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_data_fifo_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_data_fifo_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m00_data_fifo_to_auto_pc_RID(1 downto 0),
      s_axi_rlast => m00_data_fifo_to_auto_pc_RLAST,
      s_axi_rready => m00_data_fifo_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_data_fifo_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_data_fifo_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_data_fifo_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_data_fifo_to_auto_pc_WLAST,
      s_axi_wready => m00_data_fifo_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_data_fifo_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_data_fifo_to_auto_pc_WVALID
    );
m00_data_fifo: component drone_m00_data_fifo_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => m00_data_fifo_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_data_fifo_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m00_data_fifo_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => m00_data_fifo_to_auto_pc_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => m00_data_fifo_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => m00_data_fifo_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => m00_data_fifo_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m00_data_fifo_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => m00_data_fifo_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => m00_data_fifo_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => m00_data_fifo_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_data_fifo_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_data_fifo_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_data_fifo_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_data_fifo_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => m00_data_fifo_to_auto_pc_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => m00_data_fifo_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => m00_data_fifo_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => m00_data_fifo_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_data_fifo_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => m00_data_fifo_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => m00_data_fifo_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => m00_data_fifo_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_data_fifo_to_auto_pc_AWVALID,
      m_axi_bid(1 downto 0) => m00_data_fifo_to_auto_pc_BID(1 downto 0),
      m_axi_bready => m00_data_fifo_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => m00_data_fifo_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => m00_data_fifo_to_auto_pc_BVALID,
      m_axi_rdata(63 downto 0) => m00_data_fifo_to_auto_pc_RDATA(63 downto 0),
      m_axi_rid(1 downto 0) => m00_data_fifo_to_auto_pc_RID(1 downto 0),
      m_axi_rlast => m00_data_fifo_to_auto_pc_RLAST,
      m_axi_rready => m00_data_fifo_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => m00_data_fifo_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => m00_data_fifo_to_auto_pc_RVALID,
      m_axi_wdata(63 downto 0) => m00_data_fifo_to_auto_pc_WDATA(63 downto 0),
      m_axi_wlast => m00_data_fifo_to_auto_pc_WLAST,
      m_axi_wready => m00_data_fifo_to_auto_pc_WREADY,
      m_axi_wstrb(7 downto 0) => m00_data_fifo_to_auto_pc_WSTRB(7 downto 0),
      m_axi_wvalid => m00_data_fifo_to_auto_pc_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => m00_couplers_to_m00_data_fifo_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_m00_data_fifo_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_m00_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_m00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m00_couplers_to_m00_data_fifo_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_m00_data_fifo_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_m00_data_fifo_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_m00_data_fifo_AWVALID,
      s_axi_bid(1 downto 0) => m00_couplers_to_m00_data_fifo_BID(1 downto 0),
      s_axi_bready => m00_couplers_to_m00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_data_fifo_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_m00_data_fifo_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m00_couplers_to_m00_data_fifo_RID(1 downto 0),
      s_axi_rlast => m00_couplers_to_m00_data_fifo_RLAST,
      s_axi_rready => m00_couplers_to_m00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_data_fifo_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_m00_data_fifo_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_m00_data_fifo_WLAST,
      s_axi_wready => m00_couplers_to_m00_data_fifo_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_m00_data_fifo_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_data_fifo_WVALID
    );
m00_regslice: component drone_m00_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => m00_regslice_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_regslice_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m00_regslice_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => m00_regslice_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(3 downto 0) => m00_regslice_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => m00_regslice_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => m00_regslice_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m00_regslice_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => m00_regslice_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_regslice_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_regslice_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_regslice_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => m00_regslice_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(3 downto 0) => m00_regslice_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => m00_regslice_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => m00_regslice_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_regslice_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => m00_regslice_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bid(1 downto 0) => m00_regslice_to_m00_couplers_BID(1 downto 0),
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => m00_regslice_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(1 downto 0) => m00_regslice_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast => m00_regslice_to_m00_couplers_RLAST,
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => m00_regslice_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(1 downto 0) => m00_regslice_to_m00_couplers_WID(1 downto 0),
      m_axi_wlast => m00_regslice_to_m00_couplers_WLAST,
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => m00_regslice_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => auto_pc_to_m00_regslice_ARID(1 downto 0),
      s_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      s_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => auto_pc_to_m00_regslice_AWID(1 downto 0),
      s_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      s_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      s_axi_bid(1 downto 0) => auto_pc_to_m00_regslice_BID(1 downto 0),
      s_axi_bready => auto_pc_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      s_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => auto_pc_to_m00_regslice_RID(1 downto 0),
      s_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      s_axi_rready => auto_pc_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      s_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      s_axi_wid(1 downto 0) => auto_pc_to_m00_regslice_WID(1 downto 0),
      s_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      s_axi_wready => auto_pc_to_m00_regslice_WREADY,
      s_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      s_axi_wvalid => auto_pc_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_4I72GT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_4I72GT;

architecture STRUCTURE of m01_couplers_imp_4I72GT is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_CJLMS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_CJLMS;

architecture STRUCTURE of m02_couplers_imp_CJLMS is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1F9725O is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1F9725O;

architecture STRUCTURE of m03_couplers_imp_1F9725O is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_9WWXBQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_9WWXBQ;

architecture STRUCTURE of m04_couplers_imp_9WWXBQ is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_16SS5LQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_16SS5LQ;

architecture STRUCTURE of m05_couplers_imp_16SS5LQ is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_12MUI3R is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_12MUI3R;

architecture STRUCTURE of m06_couplers_imp_12MUI3R is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m06_couplers_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m06_couplers_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_E365ZJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_E365ZJ;

architecture STRUCTURE of m07_couplers_imp_E365ZJ is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_SDXJDE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_SDXJDE;

architecture STRUCTURE of m08_couplers_imp_SDXJDE is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m08_couplers_to_m08_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m08_couplers_to_m08_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1Q2JWSA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1Q2JWSA;

architecture STRUCTURE of m09_couplers_imp_1Q2JWSA is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m09_couplers_to_m09_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m09_couplers_to_m09_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_24RUPW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_24RUPW;

architecture STRUCTURE of m10_couplers_imp_24RUPW is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m10_couplers_to_m10_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m10_couplers_to_m10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m10_couplers_to_m10_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m10_couplers_to_m10_couplers_AWVALID;
  M_AXI_bready <= m10_couplers_to_m10_couplers_BREADY;
  M_AXI_rready <= m10_couplers_to_m10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m10_couplers_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m10_couplers_to_m10_couplers_WVALID;
  S_AXI_arready <= m10_couplers_to_m10_couplers_ARREADY;
  S_AXI_awready <= m10_couplers_to_m10_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m10_couplers_to_m10_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m10_couplers_to_m10_couplers_RVALID;
  S_AXI_wready <= m10_couplers_to_m10_couplers_WREADY;
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m10_couplers_to_m10_couplers_ARREADY <= M_AXI_arready;
  m10_couplers_to_m10_couplers_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m10_couplers_to_m10_couplers_AWREADY <= M_AXI_awready;
  m10_couplers_to_m10_couplers_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_m10_couplers_BREADY <= S_AXI_bready;
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID <= M_AXI_bvalid;
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY <= S_AXI_rready;
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID <= M_AXI_rvalid;
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_m10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_m10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_1GT5IUK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m11_couplers_imp_1GT5IUK;

architecture STRUCTURE of m11_couplers_imp_1GT5IUK is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m11_couplers_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m11_couplers_to_m11_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m11_couplers_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m11_couplers_to_m11_couplers_AWVALID(0);
  M_AXI_bready(0) <= m11_couplers_to_m11_couplers_BREADY(0);
  M_AXI_rready(0) <= m11_couplers_to_m11_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m11_couplers_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m11_couplers_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m11_couplers_to_m11_couplers_WVALID(0);
  S_AXI_arready(0) <= m11_couplers_to_m11_couplers_ARREADY(0);
  S_AXI_awready(0) <= m11_couplers_to_m11_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_m11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m11_couplers_to_m11_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_m11_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_m11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m11_couplers_to_m11_couplers_RVALID(0);
  S_AXI_wready(0) <= m11_couplers_to_m11_couplers_WREADY(0);
  m11_couplers_to_m11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_m11_couplers_ARREADY(0) <= M_AXI_arready(0);
  m11_couplers_to_m11_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m11_couplers_to_m11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_m11_couplers_AWREADY(0) <= M_AXI_awready(0);
  m11_couplers_to_m11_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m11_couplers_to_m11_couplers_BREADY(0) <= S_AXI_bready(0);
  m11_couplers_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m11_couplers_to_m11_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m11_couplers_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m11_couplers_to_m11_couplers_RREADY(0) <= S_AXI_rready(0);
  m11_couplers_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m11_couplers_to_m11_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m11_couplers_to_m11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_m11_couplers_WREADY(0) <= M_AXI_wready(0);
  m11_couplers_to_m11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_m11_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_1CLMMS5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m12_couplers_imp_1CLMMS5;

architecture STRUCTURE of m12_couplers_imp_1CLMMS5 is
  component drone_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m12_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m12_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal auto_cc_to_m12_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m12_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m12_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m12_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m12_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m12_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m12_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m12_couplers_WVALID : STD_LOGIC;
  signal m12_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m12_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m12_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m12_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m12_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m12_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m12_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m12_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m12_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m12_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(9 downto 0) <= auto_cc_to_m12_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid <= auto_cc_to_m12_couplers_ARVALID;
  M_AXI_awaddr(9 downto 0) <= auto_cc_to_m12_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid <= auto_cc_to_m12_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m12_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m12_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m12_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_cc_to_m12_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m12_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m12_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m12_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m12_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m12_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m12_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m12_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m12_couplers_to_auto_cc_WREADY;
  auto_cc_to_m12_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m12_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m12_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m12_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m12_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m12_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m12_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m12_couplers_WREADY <= M_AXI_wready;
  m12_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m12_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m12_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m12_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m12_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m12_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m12_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m12_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m12_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m12_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m12_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component drone_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(9 downto 0) => auto_cc_to_m12_couplers_ARADDR(9 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_cc_to_m12_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m12_couplers_ARVALID,
      m_axi_awaddr(9 downto 0) => auto_cc_to_m12_couplers_AWADDR(9 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_cc_to_m12_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m12_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m12_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m12_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m12_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m12_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m12_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m12_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_cc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_cc_to_m12_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(9 downto 0) => m12_couplers_to_auto_cc_ARADDR(9 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m12_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m12_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m12_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(9 downto 0) => m12_couplers_to_auto_cc_AWADDR(9 downto 0),
      s_axi_awprot(2 downto 0) => m12_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m12_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m12_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m12_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m12_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m12_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m12_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m12_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m12_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m12_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m12_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m12_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m12_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m12_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_6BZ5ML is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m13_couplers_imp_6BZ5ML;

architecture STRUCTURE of m13_couplers_imp_6BZ5ML is
  component drone_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m13_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m13_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m13_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m13_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m13_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m13_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m13_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m13_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m13_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m13_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m13_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m13_couplers_WVALID : STD_LOGIC;
  signal m13_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m13_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m13_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m13_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m13_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m13_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m13_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m13_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m13_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m13_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m13_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m13_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(3 downto 0) <= auto_cc_to_m13_couplers_ARADDR(3 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m13_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m13_couplers_ARVALID;
  M_AXI_awaddr(3 downto 0) <= auto_cc_to_m13_couplers_AWADDR(3 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m13_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m13_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m13_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m13_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m13_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m13_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m13_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m13_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m13_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m13_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m13_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m13_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m13_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m13_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m13_couplers_to_auto_cc_WREADY;
  auto_cc_to_m13_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m13_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m13_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m13_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m13_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m13_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m13_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m13_couplers_WREADY <= M_AXI_wready;
  m13_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m13_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m13_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m13_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m13_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m13_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m13_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m13_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m13_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m13_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m13_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component drone_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(3 downto 0) => auto_cc_to_m13_couplers_ARADDR(3 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m13_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m13_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m13_couplers_ARVALID,
      m_axi_awaddr(3 downto 0) => auto_cc_to_m13_couplers_AWADDR(3 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m13_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m13_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m13_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m13_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m13_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m13_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m13_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m13_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m13_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m13_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m13_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(3 downto 0) => m13_couplers_to_auto_cc_ARADDR(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m13_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m13_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m13_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(3 downto 0) => m13_couplers_to_auto_cc_AWADDR(3 downto 0),
      s_axi_awprot(2 downto 0) => m13_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m13_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m13_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m13_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m13_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m13_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m13_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m13_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m13_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m13_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m13_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m13_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m13_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m13_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1YY2XJ2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1YY2XJ2;

architecture STRUCTURE of s00_couplers_imp_1YY2XJ2 is
  component drone_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component drone_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_JGASE1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_JGASE1;

architecture STRUCTURE of s00_couplers_imp_JGASE1 is
  component drone_s00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component drone_s00_regslice_0;
  component drone_auto_us_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component drone_auto_us_df_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_df_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_df_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_df_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_df_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_df_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_df_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_df_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_df_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_df_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_df_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_df_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_df_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_df_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_df_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_df_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_df_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_df_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_us_df_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_df_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_df_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_df_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_df_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_df_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_df_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_df_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_df_WVALID : STD_LOGIC;
  signal NLW_auto_us_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_awaddr(31 downto 0) <= auto_us_df_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_df_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_df_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_df_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_df_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_df_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_df_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_df_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_df_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_df_to_s00_couplers_BREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_df_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_df_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_df_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_df_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  auto_us_df_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_df_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_df_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_df_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
auto_us_df: component drone_auto_us_df_0
     port map (
      m_axi_awaddr(31 downto 0) => auto_us_df_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_df_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_df_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_df_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_df_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_df_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_df_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_df_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_df_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_df_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_df_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_df_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_df_to_s00_couplers_BVALID,
      m_axi_wdata(63 downto 0) => auto_us_df_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_df_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_df_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_df_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_df_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_df_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_df_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_df_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_df_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_us_df_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_df_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_df_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_us_df_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_df_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_df_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_us_df_AWVALID,
      s_axi_bready => s00_regslice_to_auto_us_df_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_df_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_us_df_BVALID,
      s_axi_wdata(31 downto 0) => s00_regslice_to_auto_us_df_WDATA(31 downto 0),
      s_axi_wlast => s00_regslice_to_auto_us_df_WLAST,
      s_axi_wready => s00_regslice_to_auto_us_df_WREADY,
      s_axi_wstrb(3 downto 0) => s00_regslice_to_auto_us_df_WSTRB(3 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_us_df_WVALID
    );
s00_regslice: component drone_s00_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_df_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_df_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_df_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_df_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_us_df_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_df_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_df_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_us_df_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_df_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_df_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_us_df_AWVALID,
      m_axi_bready => s00_regslice_to_auto_us_df_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_df_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_us_df_BVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_auto_us_df_WDATA(31 downto 0),
      m_axi_wlast => s00_regslice_to_auto_us_df_WLAST,
      m_axi_wready => s00_regslice_to_auto_us_df_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_auto_us_df_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_us_df_WVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_regslice_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1YZVDN5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1YZVDN5;

architecture STRUCTURE of s01_couplers_imp_1YZVDN5 is
  component drone_s01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_s01_regslice_0;
  component drone_auto_us_cc_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_us_cc_df_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_cc_df_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_cc_df_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_cc_df_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_BREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_BVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_RVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_WLAST : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_WVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_WVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_regslice_to_auto_us_cc_df_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_regslice_to_auto_us_cc_df_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_BVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WVALID : STD_LOGIC;
  signal NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= auto_us_cc_df_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_cc_df_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_cc_df_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_cc_df_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_cc_df_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_cc_df_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_cc_df_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_cc_df_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_cc_df_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_cc_df_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_cc_df_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_cc_df_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_cc_df_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_cc_df_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_cc_df_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_cc_df_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_cc_df_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_cc_df_to_s01_couplers_AWVALID;
  M_AXI_bready <= auto_us_cc_df_to_s01_couplers_BREADY;
  M_AXI_rready <= auto_us_cc_df_to_s01_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_cc_df_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_cc_df_to_s01_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_cc_df_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_cc_df_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s01_couplers_to_s01_regslice_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_regslice_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_s01_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_regslice_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_regslice_WREADY;
  auto_us_cc_df_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_cc_df_to_s01_couplers_AWREADY <= M_AXI_awready;
  auto_us_cc_df_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_cc_df_to_s01_couplers_BVALID <= M_AXI_bvalid;
  auto_us_cc_df_to_s01_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_cc_df_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_cc_df_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_cc_df_to_s01_couplers_RVALID <= M_AXI_rvalid;
  auto_us_cc_df_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_regslice_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_regslice_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_regslice_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_regslice_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_regslice_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_regslice_WVALID <= S_AXI_wvalid;
auto_us_cc_df: component drone_auto_us_cc_df_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_us_cc_df_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_cc_df_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_cc_df_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arlen(7 downto 0) => auto_us_cc_df_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_cc_df_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_cc_df_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_cc_df_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_cc_df_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_cc_df_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_cc_df_to_s01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_cc_df_to_s01_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_cc_df_to_s01_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_cc_df_to_s01_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_cc_df_to_s01_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_cc_df_to_s01_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_cc_df_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_cc_df_to_s01_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_cc_df_to_s01_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_cc_df_to_s01_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_cc_df_to_s01_couplers_AWVALID,
      m_axi_bready => auto_us_cc_df_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_cc_df_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_cc_df_to_s01_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_cc_df_to_s01_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_cc_df_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_cc_df_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_cc_df_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_cc_df_to_s01_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_cc_df_to_s01_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_cc_df_to_s01_couplers_WLAST,
      m_axi_wready => auto_us_cc_df_to_s01_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_cc_df_to_s01_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_cc_df_to_s01_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      s_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      s_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      s_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      s_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      s_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      s_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      s_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      s_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      s_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      s_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      s_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      s_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      s_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      s_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      s_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      s_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      s_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID
    );
s01_regslice: component drone_s01_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      m_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      m_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      m_axi_awaddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      m_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      m_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      m_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      m_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      m_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      m_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      m_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      m_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      m_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      m_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      m_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      m_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      m_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      m_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      m_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID,
      s_axi_araddr(31 downto 0) => s01_couplers_to_s01_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_s01_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_s01_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s01_couplers_to_s01_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s01_couplers_to_s01_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s01_couplers_to_s01_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_s01_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_s01_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_couplers_to_s01_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_s01_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_s01_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_couplers_to_s01_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s01_couplers_to_s01_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s01_couplers_to_s01_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s01_couplers_to_s01_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_s01_regslice_AWVALID,
      s_axi_bready => s01_couplers_to_s01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_s01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_s01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_s01_regslice_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_s01_regslice_RLAST,
      s_axi_rready => s01_couplers_to_s01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_s01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_s01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s01_couplers_to_s01_regslice_WDATA(31 downto 0),
      s_axi_wlast => s01_couplers_to_s01_regslice_WLAST,
      s_axi_wready => s01_couplers_to_s01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s01_couplers_to_s01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s01_couplers_to_s01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1U7GECO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s02_couplers_imp_1U7GECO;

architecture STRUCTURE of s02_couplers_imp_1U7GECO is
  component drone_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_us_0;
  component drone_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component drone_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s02_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s02_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s02_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_s02_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s02_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_cc_ARREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_cc_ARVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_cc_RLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_RREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_cc_RVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= auto_cc_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_cc_to_s02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_s02_couplers_ARVALID;
  M_AXI_rready <= auto_cc_to_s02_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s02_couplers_to_auto_us_ARREADY;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s02_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_auto_us_RVALID;
  auto_cc_to_s02_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_s02_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_cc_to_s02_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_s02_couplers_RVALID <= M_AXI_rvalid;
  s02_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_auto_us_RREADY <= S_AXI_rready;
auto_cc: component drone_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_s02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s02_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arlen(7 downto 0) => auto_cc_to_s02_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s02_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_s02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s02_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s02_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_cc_to_s02_couplers_ARVALID,
      m_axi_rdata(63 downto 0) => auto_cc_to_s02_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_cc_to_s02_couplers_RLAST,
      m_axi_rready => auto_cc_to_s02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s02_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => auto_us_to_auto_cc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_us_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_us_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arlen(7 downto 0) => auto_us_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_us_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_us_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_us_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => auto_us_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_us_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_us_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_us_to_auto_cc_ARVALID,
      s_axi_rdata(63 downto 0) => auto_us_to_auto_cc_RDATA(63 downto 0),
      s_axi_rlast => auto_us_to_auto_cc_RLAST,
      s_axi_rready => auto_us_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => auto_us_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => auto_us_to_auto_cc_RVALID
    );
auto_us: component drone_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_auto_cc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_auto_cc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_auto_cc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_auto_cc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_auto_cc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_auto_cc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_auto_cc_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_auto_cc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_us_to_auto_cc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_auto_cc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_auto_cc_ARVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_auto_cc_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_auto_cc_RLAST,
      m_axi_rready => auto_us_to_auto_cc_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_auto_cc_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_auto_cc_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s02_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s02_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arlen(7 downto 0) => s02_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s02_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s02_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s02_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_couplers_to_auto_us_ARVALID,
      s_axi_rdata(31 downto 0) => s02_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s02_couplers_to_auto_us_RLAST,
      s_axi_rready => s02_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s02_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s02_couplers_to_auto_us_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity drone_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC
  );
end drone_axi_mem_intercon_0;

architecture STRUCTURE of drone_axi_mem_intercon_0 is
  component drone_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 191 downto 128 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARID(1 downto 0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWID(1 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0);
  M00_AXI_wid(1 downto 0) <= m00_couplers_to_axi_mem_intercon_WID(1 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1(0) <= S01_ARESETN(0);
  S01_AXI_arready <= axi_mem_intercon_to_s01_couplers_ARREADY;
  S01_AXI_awready <= axi_mem_intercon_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= axi_mem_intercon_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast <= axi_mem_intercon_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_mem_intercon_to_s01_couplers_RVALID;
  S01_AXI_wready <= axi_mem_intercon_to_s01_couplers_WREADY;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1(0) <= S02_ARESETN(0);
  S02_AXI_arready <= axi_mem_intercon_to_s02_couplers_ARREADY;
  S02_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rlast <= axi_mem_intercon_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= axi_mem_intercon_to_s02_couplers_RVALID;
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net(0) <= ARESETN(0);
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  axi_mem_intercon_to_s01_couplers_BREADY <= S01_AXI_bready;
  axi_mem_intercon_to_s01_couplers_RREADY <= S01_AXI_rready;
  axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s01_couplers_WLAST <= S01_AXI_wlast;
  axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  axi_mem_intercon_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  axi_mem_intercon_to_s02_couplers_RREADY <= S02_AXI_rready;
  m00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_4K4S7M
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARID(1 downto 0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWID(1 downto 0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_mem_intercon_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_mem_intercon_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => m00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_WDATA(63 downto 0),
      M_AXI_wid(1 downto 0) => m00_couplers_to_axi_mem_intercon_WID(1 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => m00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_JGASE1
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1YZVDN5
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(63 downto 0) => s01_couplers_to_xbar_RDATA(127 downto 64),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN(0) => S01_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s01_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s01_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s01_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_1U7GECO
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s02_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_rdata(63 downto 0) => s02_couplers_to_xbar_RDATA(191 downto 128),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      S_ACLK => S02_ACLK_1,
      S_ARESETN(0) => S02_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s02_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s02_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s02_couplers_RVALID
    );
xbar: component drone_xbar_1
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net(0),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => NLW_xbar_s_axi_arready_UNCONNECTED(0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => '0',
      s_axi_awaddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 4) => B"00",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 8) => B"0000",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => B"00000000",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2) => '0',
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(8 downto 6) => B"000",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 8) => B"0000",
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2) => NLW_xbar_s_axi_awready_UNCONNECTED(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(8 downto 6) => B"000",
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2) => '0',
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => '0',
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => NLW_xbar_s_axi_bresp_UNCONNECTED(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => NLW_xbar_s_axi_bvalid_UNCONNECTED(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(191 downto 128) => s02_couplers_to_xbar_RDATA(191 downto 128),
      s_axi_rdata(127 downto 64) => s01_couplers_to_xbar_RDATA(127 downto 64),
      s_axi_rdata(63 downto 0) => NLW_xbar_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => NLW_xbar_s_axi_rlast_UNCONNECTED(0),
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => '0',
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => NLW_xbar_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => NLW_xbar_s_axi_rvalid_UNCONNECTED(0),
      s_axi_wdata(191 downto 128) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wlast(2) => '1',
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2) => NLW_xbar_s_axi_wready_UNCONNECTED(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(23 downto 16) => B"11111111",
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wvalid(2) => '0',
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity drone_processing_system7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M12_AXI_arready : in STD_LOGIC;
    M12_AXI_arvalid : out STD_LOGIC;
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M12_AXI_awready : in STD_LOGIC;
    M12_AXI_awvalid : out STD_LOGIC;
    M12_AXI_bready : out STD_LOGIC;
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC;
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC;
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC;
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC;
    M12_AXI_wvalid : out STD_LOGIC;
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M13_AXI_arready : in STD_LOGIC;
    M13_AXI_arvalid : out STD_LOGIC;
    M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M13_AXI_awready : in STD_LOGIC;
    M13_AXI_awvalid : out STD_LOGIC;
    M13_AXI_bready : out STD_LOGIC;
    M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_bvalid : in STD_LOGIC;
    M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_rready : out STD_LOGIC;
    M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_rvalid : in STD_LOGIC;
    M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_wready : in STD_LOGIC;
    M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end drone_processing_system7_0_axi_periph_0;

architecture STRUCTURE of drone_processing_system7_0_axi_periph_0 is
  component drone_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component drone_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M12_ACLK_1 : STD_LOGIC;
  signal M12_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M13_ACLK_1 : STD_LOGIC;
  signal M13_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m08_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m09_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m10_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m11_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m12_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal m13_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_ARPROT : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_AWPROT : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1(0) <= M03_ARESETN(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1(0) <= M04_ARESETN(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1(0) <= M05_ARESETN(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1(0) <= M06_ARESETN(0);
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1(0) <= M07_ARESETN(0);
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1(0) <= M08_ARESETN(0);
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arprot(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awprot(2 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M08_AXI_bready <= m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  M08_AXI_rready <= m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1(0) <= M09_ARESETN(0);
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M09_AXI_arprot(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M09_AXI_awprot(2 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M09_AXI_bready <= m09_couplers_to_processing_system7_0_axi_periph_BREADY;
  M09_AXI_rready <= m09_couplers_to_processing_system7_0_axi_periph_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_processing_system7_0_axi_periph_WVALID;
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1(0) <= M10_ARESETN(0);
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M10_AXI_arprot(2 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M10_AXI_arvalid <= m10_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M10_AXI_awprot(2 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M10_AXI_awvalid <= m10_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M10_AXI_bready <= m10_couplers_to_processing_system7_0_axi_periph_BREADY;
  M10_AXI_rready <= m10_couplers_to_processing_system7_0_axi_periph_RREADY;
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M10_AXI_wvalid <= m10_couplers_to_processing_system7_0_axi_periph_WVALID;
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1(0) <= M11_ARESETN(0);
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0);
  M11_AXI_arvalid(0) <= m11_couplers_to_processing_system7_0_axi_periph_ARVALID(0);
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0);
  M11_AXI_awvalid(0) <= m11_couplers_to_processing_system7_0_axi_periph_AWVALID(0);
  M11_AXI_bready(0) <= m11_couplers_to_processing_system7_0_axi_periph_BREADY(0);
  M11_AXI_rready(0) <= m11_couplers_to_processing_system7_0_axi_periph_RREADY(0);
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M11_AXI_wvalid(0) <= m11_couplers_to_processing_system7_0_axi_periph_WVALID(0);
  M12_ACLK_1 <= M12_ACLK;
  M12_ARESETN_1(0) <= M12_ARESETN(0);
  M12_AXI_araddr(9 downto 0) <= m12_couplers_to_processing_system7_0_axi_periph_ARADDR(9 downto 0);
  M12_AXI_arvalid <= m12_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M12_AXI_awaddr(9 downto 0) <= m12_couplers_to_processing_system7_0_axi_periph_AWADDR(9 downto 0);
  M12_AXI_awvalid <= m12_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M12_AXI_bready <= m12_couplers_to_processing_system7_0_axi_periph_BREADY;
  M12_AXI_rready <= m12_couplers_to_processing_system7_0_axi_periph_RREADY;
  M12_AXI_wdata(31 downto 0) <= m12_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M12_AXI_wvalid <= m12_couplers_to_processing_system7_0_axi_periph_WVALID;
  M13_ACLK_1 <= M13_ACLK;
  M13_ARESETN_1(0) <= M13_ARESETN(0);
  M13_AXI_araddr(3 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_ARADDR(3 downto 0);
  M13_AXI_arprot(2 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0);
  M13_AXI_arvalid <= m13_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M13_AXI_awaddr(3 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_AWADDR(3 downto 0);
  M13_AXI_awprot(2 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0);
  M13_AXI_awvalid <= m13_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M13_AXI_bready <= m13_couplers_to_processing_system7_0_axi_periph_BREADY;
  M13_AXI_rready <= m13_couplers_to_processing_system7_0_axi_periph_RREADY;
  M13_AXI_wdata(31 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0);
  M13_AXI_wstrb(3 downto 0) <= m13_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0);
  M13_AXI_wvalid <= m13_couplers_to_processing_system7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready <= processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_processing_system7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_processing_system7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_processing_system7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_processing_system7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_processing_system7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_processing_system7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_processing_system7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_processing_system7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_processing_system7_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_processing_system7_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_processing_system7_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_processing_system7_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_processing_system7_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_processing_system7_0_axi_periph_ARREADY <= M08_AXI_arready;
  m08_couplers_to_processing_system7_0_axi_periph_AWREADY <= M08_AXI_awready;
  m08_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_processing_system7_0_axi_periph_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_processing_system7_0_axi_periph_WREADY <= M08_AXI_wready;
  m09_couplers_to_processing_system7_0_axi_periph_ARREADY <= M09_AXI_arready;
  m09_couplers_to_processing_system7_0_axi_periph_AWREADY <= M09_AXI_awready;
  m09_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_processing_system7_0_axi_periph_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_processing_system7_0_axi_periph_WREADY <= M09_AXI_wready;
  m10_couplers_to_processing_system7_0_axi_periph_ARREADY <= M10_AXI_arready;
  m10_couplers_to_processing_system7_0_axi_periph_AWREADY <= M10_AXI_awready;
  m10_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_processing_system7_0_axi_periph_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_processing_system7_0_axi_periph_WREADY <= M10_AXI_wready;
  m11_couplers_to_processing_system7_0_axi_periph_ARREADY(0) <= M11_AXI_arready(0);
  m11_couplers_to_processing_system7_0_axi_periph_AWREADY(0) <= M11_AXI_awready(0);
  m11_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_BVALID(0) <= M11_AXI_bvalid(0);
  m11_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_processing_system7_0_axi_periph_RVALID(0) <= M11_AXI_rvalid(0);
  m11_couplers_to_processing_system7_0_axi_periph_WREADY(0) <= M11_AXI_wready(0);
  m12_couplers_to_processing_system7_0_axi_periph_ARREADY <= M12_AXI_arready;
  m12_couplers_to_processing_system7_0_axi_periph_AWREADY <= M12_AXI_awready;
  m12_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M12_AXI_bresp(1 downto 0);
  m12_couplers_to_processing_system7_0_axi_periph_BVALID <= M12_AXI_bvalid;
  m12_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M12_AXI_rdata(31 downto 0);
  m12_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M12_AXI_rresp(1 downto 0);
  m12_couplers_to_processing_system7_0_axi_periph_RVALID <= M12_AXI_rvalid;
  m12_couplers_to_processing_system7_0_axi_periph_WREADY <= M12_AXI_wready;
  m13_couplers_to_processing_system7_0_axi_periph_ARREADY <= M13_AXI_arready;
  m13_couplers_to_processing_system7_0_axi_periph_AWREADY <= M13_AXI_awready;
  m13_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M13_AXI_bresp(1 downto 0);
  m13_couplers_to_processing_system7_0_axi_periph_BVALID <= M13_AXI_bvalid;
  m13_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M13_AXI_rdata(31 downto 0);
  m13_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M13_AXI_rresp(1 downto 0);
  m13_couplers_to_processing_system7_0_axi_periph_RVALID <= M13_AXI_rvalid;
  m13_couplers_to_processing_system7_0_axi_periph_WREADY <= M13_AXI_wready;
  processing_system7_0_axi_periph_ACLK_net <= ACLK;
  processing_system7_0_axi_periph_ARESETN_net(0) <= ARESETN(0);
  processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  processing_system7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  processing_system7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1B3V6J9
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_4I72GT
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m01_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m01_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_CJLMS
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1F9725O
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN(0) => M03_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_9WWXBQ
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN(0) => M04_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_16SS5LQ
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN(0) => M05_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wvalid(0) => m05_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_12MUI3R
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN(0) => M06_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_E365ZJ
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN(0) => M07_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m07_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m07_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => xbar_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => xbar_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => xbar_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_SDXJDE
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN(0) => M08_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m08_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m08_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m08_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m08_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m08_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m08_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m08_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_1Q2JWSA
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN(0) => M09_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m09_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m09_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m09_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m09_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m09_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_24RUPW
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN(0) => M10_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m10_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m10_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m10_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m10_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m10_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m10_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m10_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m10_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m10_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m10_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arprot(2 downto 0) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awprot(2 downto 0) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_1GT5IUK
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN(0) => M11_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m11_couplers_to_processing_system7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m11_couplers_to_processing_system7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m11_couplers_to_processing_system7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m11_couplers_to_processing_system7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m11_couplers_to_processing_system7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m11_couplers_to_processing_system7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m11_couplers_to_processing_system7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m11_couplers_to_processing_system7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m11_couplers_to_processing_system7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m11_couplers_to_processing_system7_0_axi_periph_WVALID(0),
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      S_AXI_arready(0) => xbar_to_m11_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr(31 downto 0) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      S_AXI_awready(0) => xbar_to_m11_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bready(0) => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m11_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m11_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      S_AXI_wready(0) => xbar_to_m11_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      S_AXI_wvalid(0) => xbar_to_m11_couplers_WVALID(11)
    );
m12_couplers: entity work.m12_couplers_imp_1CLMMS5
     port map (
      M_ACLK => M12_ACLK_1,
      M_ARESETN(0) => M12_ARESETN_1(0),
      M_AXI_araddr(9 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_ARADDR(9 downto 0),
      M_AXI_arready => m12_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m12_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(9 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_AWADDR(9 downto 0),
      M_AXI_awready => m12_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m12_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m12_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m12_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m12_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m12_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m12_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m12_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wvalid => m12_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      S_AXI_arprot(2 downto 0) => xbar_to_m12_couplers_ARPROT(38 downto 36),
      S_AXI_arready => xbar_to_m12_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m12_couplers_ARVALID(12),
      S_AXI_awaddr(31 downto 0) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      S_AXI_awprot(2 downto 0) => xbar_to_m12_couplers_AWPROT(38 downto 36),
      S_AXI_awready => xbar_to_m12_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m12_couplers_AWVALID(12),
      S_AXI_bready => xbar_to_m12_couplers_BREADY(12),
      S_AXI_bresp(1 downto 0) => xbar_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m12_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m12_couplers_RREADY(12),
      S_AXI_rresp(1 downto 0) => xbar_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m12_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m12_couplers_WDATA(415 downto 384),
      S_AXI_wready => xbar_to_m12_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      S_AXI_wvalid => xbar_to_m12_couplers_WVALID(12)
    );
m13_couplers: entity work.m13_couplers_imp_6BZ5ML
     port map (
      M_ACLK => M13_ACLK_1,
      M_ARESETN(0) => M13_ARESETN_1(0),
      M_AXI_araddr(3 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arprot(2 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m13_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m13_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr(3 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awprot(2 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m13_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m13_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bready => m13_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m13_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m13_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m13_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m13_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m13_couplers_to_processing_system7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m13_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => processing_system7_0_axi_periph_ACLK_net,
      S_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      S_AXI_arprot(2 downto 0) => xbar_to_m13_couplers_ARPROT(41 downto 39),
      S_AXI_arready => xbar_to_m13_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m13_couplers_ARVALID(13),
      S_AXI_awaddr(31 downto 0) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      S_AXI_awprot(2 downto 0) => xbar_to_m13_couplers_AWPROT(41 downto 39),
      S_AXI_awready => xbar_to_m13_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m13_couplers_AWVALID(13),
      S_AXI_bready => xbar_to_m13_couplers_BREADY(13),
      S_AXI_bresp(1 downto 0) => xbar_to_m13_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m13_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m13_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m13_couplers_RREADY(13),
      S_AXI_rresp(1 downto 0) => xbar_to_m13_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m13_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m13_couplers_WDATA(447 downto 416),
      S_AXI_wready => xbar_to_m13_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      S_AXI_wvalid => xbar_to_m13_couplers_WVALID(13)
    );
s00_couplers: entity work.s00_couplers_imp_1YY2XJ2
     port map (
      M_ACLK => processing_system7_0_axi_periph_ACLK_net,
      M_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => processing_system7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => processing_system7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => processing_system7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => processing_system7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => processing_system7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => processing_system7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => processing_system7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => processing_system7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => processing_system7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => processing_system7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => processing_system7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => processing_system7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component drone_xbar_0
     port map (
      aclk => processing_system7_0_axi_periph_ACLK_net,
      aresetn => processing_system7_0_axi_periph_ARESETN_net(0),
      m_axi_araddr(447 downto 416) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      m_axi_araddr(415 downto 384) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(41 downto 39) => xbar_to_m13_couplers_ARPROT(41 downto 39),
      m_axi_arprot(38 downto 36) => xbar_to_m12_couplers_ARPROT(38 downto 36),
      m_axi_arprot(35 downto 33) => NLW_xbar_m_axi_arprot_UNCONNECTED(35 downto 33),
      m_axi_arprot(32 downto 30) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => NLW_xbar_m_axi_arprot_UNCONNECTED(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(13) => xbar_to_m13_couplers_ARREADY,
      m_axi_arready(12) => xbar_to_m12_couplers_ARREADY,
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY(0),
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(13) => xbar_to_m13_couplers_ARVALID(13),
      m_axi_arvalid(12) => xbar_to_m12_couplers_ARVALID(12),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(447 downto 416) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      m_axi_awaddr(415 downto 384) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(41 downto 39) => xbar_to_m13_couplers_AWPROT(41 downto 39),
      m_axi_awprot(38 downto 36) => xbar_to_m12_couplers_AWPROT(38 downto 36),
      m_axi_awprot(35 downto 33) => NLW_xbar_m_axi_awprot_UNCONNECTED(35 downto 33),
      m_axi_awprot(32 downto 30) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => NLW_xbar_m_axi_awprot_UNCONNECTED(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(13) => xbar_to_m13_couplers_AWREADY,
      m_axi_awready(12) => xbar_to_m12_couplers_AWREADY,
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY(0),
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(13) => xbar_to_m13_couplers_AWVALID(13),
      m_axi_awvalid(12) => xbar_to_m12_couplers_AWVALID(12),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(13) => xbar_to_m13_couplers_BREADY(13),
      m_axi_bready(12) => xbar_to_m12_couplers_BREADY(12),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(27 downto 26) => xbar_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bresp(25 downto 24) => xbar_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(13) => xbar_to_m13_couplers_BVALID,
      m_axi_bvalid(12) => xbar_to_m12_couplers_BVALID,
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID(0),
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(447 downto 416) => xbar_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rdata(415 downto 384) => xbar_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(13) => xbar_to_m13_couplers_RREADY(13),
      m_axi_rready(12) => xbar_to_m12_couplers_RREADY(12),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(27 downto 26) => xbar_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rresp(25 downto 24) => xbar_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(13) => xbar_to_m13_couplers_RVALID,
      m_axi_rvalid(12) => xbar_to_m12_couplers_RVALID,
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID(0),
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(447 downto 416) => xbar_to_m13_couplers_WDATA(447 downto 416),
      m_axi_wdata(415 downto 384) => xbar_to_m12_couplers_WDATA(415 downto 384),
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(13) => xbar_to_m13_couplers_WREADY,
      m_axi_wready(12) => xbar_to_m12_couplers_WREADY,
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY(0),
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(55 downto 52) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      m_axi_wstrb(51 downto 48) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => NLW_xbar_m_axi_wstrb_UNCONNECTED(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(13) => xbar_to_m13_couplers_WVALID(13),
      m_axi_wvalid(12) => xbar_to_m12_couplers_WVALID(12),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity drone is
  port (
    BL : out STD_LOGIC;
    BR : out STD_LOGIC;
    Core0_nIRQ : in STD_LOGIC;
    Core1_nIRQ : in STD_LOGIC;
    DDC_scl_i : in STD_LOGIC;
    DDC_scl_o : out STD_LOGIC;
    DDC_scl_t : out STD_LOGIC;
    DDC_sda_i : in STD_LOGIC;
    DDC_sda_o : out STD_LOGIC;
    DDC_sda_t : out STD_LOGIC;
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
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    Mode_switch : in STD_LOGIC;
    PWM_inductive : out STD_LOGIC;
    Sonar : in STD_LOGIC;
    Sounder : out STD_LOGIC;
    TMDS_clk_n : in STD_LOGIC;
    TMDS_clk_p : in STD_LOGIC;
    TMDS_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aile : in STD_LOGIC;
    elev : in STD_LOGIC;
    gpio_testpin_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_hpd_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mode_inductive : in STD_LOGIC;
    rc_kill : in STD_LOGIC;
    rc_kill_out : out STD_LOGIC;
    rudd : in STD_LOGIC;
    throttle : in STD_LOGIC;
    tuner : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of drone : entity is "drone,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=drone,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=66,numReposBlks=45,numNonXlnxBlks=11,numHierBlks=21,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of drone : entity is "drone.hwdef";
end drone;

architecture STRUCTURE of drone is
  component drone_dvi2rgb_0_0 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    DDC_SDA_I : in STD_LOGIC;
    DDC_SDA_O : out STD_LOGIC;
    DDC_SDA_T : out STD_LOGIC;
    DDC_SCL_I : in STD_LOGIC;
    DDC_SCL_O : out STD_LOGIC;
    DDC_SCL_T : out STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  end component drone_dvi2rgb_0_0;
  component drone_processing_system7_0_0 is
  port (
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    SDIO0_WP : in STD_LOGIC;
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Core0_nIRQ : in STD_LOGIC;
    Core1_nIRQ : in STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_CLK3 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    FCLK_RESET3_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component drone_processing_system7_0_0;
  component drone_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component drone_xlconcat_0_0;
  component drone_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_xlconstant_0_0;
  component drone_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_xlconstant_1_0;
  component drone_RC_1_0 is
  port (
    RC_in0 : in STD_LOGIC;
    RC_in1 : in STD_LOGIC;
    RC_in2 : in STD_LOGIC;
    RC_in3 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_RC_1_0;
  component drone_RC_0_0 is
  port (
    RC_in0 : in STD_LOGIC;
    RC_in1 : in STD_LOGIC;
    RC_in2 : in STD_LOGIC;
    RC_in3 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_RC_0_0;
  component drone_axi_gpio_testpins_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_axi_gpio_testpins_0;
  component drone_axi_gpio_led_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_axi_gpio_led_0;
  component drone_axi_gpio_video_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_axi_gpio_video_0;
  component drone_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component drone_axi_vdma_0_0;
  component drone_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_proc_sys_reset_0_0;
  component drone_rst_processing_system7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_rst_processing_system7_0_100M_0;
  component drone_rst_processing_system7_0_150M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_rst_processing_system7_0_150M_0;
  component drone_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component drone_v_vid_in_axi4s_0_0;
  component drone_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component drone_axi_dma_0_0;
  component drone_fifo_generator_0_0 is
  port (
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component drone_fifo_generator_0_0;
  component drone_rst_processing_system7_0_100M1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component drone_rst_processing_system7_0_100M1_0;
  component drone_G_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component drone_G_0;
  component drone_R_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component drone_R_0;
  component drone_B_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component drone_B_0;
  component drone_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component drone_xlconcat_1_0;
  component drone_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    det_clken : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  end component drone_v_tc_0_0;
  component drone_DVBOutputBuffer_0_0 is
  port (
    axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_empty : in STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC
  );
  end component drone_DVBOutputBuffer_0_0;
  component drone_kill_switch_0_0 is
  port (
    pwm0 : in STD_LOGIC;
    pwm1 : in STD_LOGIC;
    pwm2 : in STD_LOGIC;
    pwm3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    rc_kill : in STD_LOGIC;
    heartbeat : in STD_LOGIC;
    total_kill_out : out STD_LOGIC;
    kill_RC_out : out STD_LOGIC;
    kill_ns_out : out STD_LOGIC;
    kill_hb_out : out STD_LOGIC;
    counter_out : out STD_LOGIC;
    pwmo_0 : out STD_LOGIC;
    pwmo_1 : out STD_LOGIC;
    pwmo_2 : out STD_LOGIC;
    pwmo_3 : out STD_LOGIC
  );
  end component drone_kill_switch_0_0;
  component drone_PWM_AXI_triple_0_0 is
  port (
    PWM_out0 : out STD_LOGIC;
    PWM_out1 : out STD_LOGIC;
    PWM_out2 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_PWM_AXI_triple_0_0;
  component drone_PWM_AXI_triple_3_0 is
  port (
    PWM_out0 : out STD_LOGIC;
    PWM_out1 : out STD_LOGIC;
    PWM_out2 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_PWM_AXI_triple_3_0;
  component drone_PWM_AXI_triple_4_0 is
  port (
    PWM_out0 : out STD_LOGIC;
    PWM_out1 : out STD_LOGIC;
    PWM_out2 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_PWM_AXI_triple_4_0;
  component drone_PWM_AXI_triple_5_0 is
  port (
    PWM_out0 : out STD_LOGIC;
    PWM_out1 : out STD_LOGIC;
    PWM_out2 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_PWM_AXI_triple_5_0;
  component drone_ModemS2Control_0_0 is
  port (
    out_data_config : out STD_LOGIC_VECTOR ( 3 downto 0 );
    modem_rolloff_config : out STD_LOGIC_VECTOR ( 1 downto 0 );
    modem_int_config : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_nullPid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl_modCod : out STD_LOGIC_VECTOR ( 4 downto 0 );
    modem_gain : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ctrl_reset : out STD_LOGIC;
    ctrl_padNull : out STD_LOGIC;
    ctrl_allowDummy : out STD_LOGIC;
    ctrl_pilot : out STD_LOGIC;
    ctrl_blockSize : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component drone_ModemS2Control_0_0;
  component drone_ModemS2Zybo_0_0 is
  port (
    clk : in STD_LOGIC;
    mpeg_input0_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mpeg_input0_inputValid : in STD_LOGIC;
    mpeg_input0_readyForPreviousBlock : out STD_LOGIC;
    out_data_config : in STD_LOGIC_VECTOR ( 3 downto 0 );
    modem_rolloff_config : in STD_LOGIC_VECTOR ( 1 downto 0 );
    modem_int_config : in STD_LOGIC_VECTOR ( 4 downto 0 );
    modem_gain : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ctrl_reset : in STD_LOGIC;
    ctrl_padNull : in STD_LOGIC;
    ctrl_allowDummy : in STD_LOGIC;
    ctrl_pilot : in STD_LOGIC;
    ctrl_blockSize : in STD_LOGIC;
    ctrl_nullPid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl_modCod : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_muxSyncLock : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_muxFrameOut : out STD_LOGIC;
    status_muxNullFrameOut : out STD_LOGIC;
    status_sendingDummy : out STD_LOGIC;
    fifo_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_full : in STD_LOGIC;
    fifo_wr_en : out STD_LOGIC
  );
  end component drone_ModemS2Zybo_0_0;
  signal B_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Core0_nIRQ_1 : STD_LOGIC;
  signal Core1_nIRQ_1 : STD_LOGIC;
  signal DVBOutputBuffer_0_fifo_rd_en : STD_LOGIC;
  signal G_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mode_switch_1 : STD_LOGIC;
  signal ModemS2Control_0_ctrl_allowDummy : STD_LOGIC;
  signal ModemS2Control_0_ctrl_blockSize : STD_LOGIC;
  signal ModemS2Control_0_ctrl_modCod : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ModemS2Control_0_ctrl_nullPid : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ModemS2Control_0_ctrl_padNull : STD_LOGIC;
  signal ModemS2Control_0_ctrl_pilot : STD_LOGIC;
  signal ModemS2Control_0_ctrl_reset : STD_LOGIC;
  signal ModemS2Control_0_modem_gain : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ModemS2Control_0_modem_int_config : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ModemS2Control_0_modem_rolloff_config : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ModemS2Control_0_out_data_config : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ModemS2Zybo_0_fifo_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ModemS2Zybo_0_fifo_wr_en : STD_LOGIC;
  signal ModemS2Zybo_0_mpeg_input0_readyForPreviousBlock : STD_LOGIC;
  signal PWM_AXI_triple_0_PWM_out0 : STD_LOGIC;
  signal PWM_AXI_triple_0_PWM_out1 : STD_LOGIC;
  signal PWM_AXI_triple_0_PWM_out2 : STD_LOGIC;
  signal PWM_AXI_triple_3_PWM_out0 : STD_LOGIC;
  signal PWM_AXI_triple_4_PWM_out0 : STD_LOGIC;
  signal PWM_AXI_triple_5_PWM_out0 : STD_LOGIC;
  signal RC_in_3_1 : STD_LOGIC;
  signal R_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Sonar_1 : STD_LOGIC;
  signal TMDS_1_CLK_N : STD_LOGIC;
  signal TMDS_1_CLK_P : STD_LOGIC;
  signal TMDS_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TMDS_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aile_1 : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_dma_0_m_axis_mm2s_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_m_axis_mm2s_tvalid : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_gpio_0_GPIO2_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_led_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_led_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_testpins_GPIO_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_video_ip2intc_irpt : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_T : STD_LOGIC;
  signal dvi2rgb_0_PixelClk : STD_LOGIC;
  signal dvi2rgb_0_aPixelClkLckd : STD_LOGIC;
  signal dvi2rgb_0_vid_pData : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_0_vid_pHSync : STD_LOGIC;
  signal dvi2rgb_0_vid_pVDE : STD_LOGIC;
  signal dvi2rgb_0_vid_pVSync : STD_LOGIC;
  signal elev_1 : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal kill_switch_0_pwmo_0 : STD_LOGIC;
  signal kill_switch_0_pwmo_1 : STD_LOGIC;
  signal kill_switch_0_pwmo_2 : STD_LOGIC;
  signal kill_switch_0_pwmo_3 : STD_LOGIC;
  signal kill_switch_0_rc_kill_out : STD_LOGIC;
  signal mode_inductive_1 : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK3 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET3_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_T : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M08_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M09_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M10_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M12_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M12_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_M13_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_M13_AXI_WVALID : STD_LOGIC;
  signal rc_kill_1 : STD_LOGIC;
  signal rst_processing_system7_0_100M1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_150M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_150M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal throttle_1 : STD_LOGIC;
  signal tuner_1 : STD_LOGIC;
  signal v_tc_0_irq : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VSYNC : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ModemS2Zybo_0_status_muxFrameOut_UNCONNECTED : STD_LOGIC;
  signal NLW_ModemS2Zybo_0_status_muxNullFrameOut_UNCONNECTED : STD_LOGIC;
  signal NLW_ModemS2Zybo_0_status_sendingDummy_UNCONNECTED : STD_LOGIC;
  signal NLW_ModemS2Zybo_0_status_muxSyncLock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_PWM_AXI_triple_3_PWM_out1_UNCONNECTED : STD_LOGIC;
  signal NLW_PWM_AXI_triple_3_PWM_out2_UNCONNECTED : STD_LOGIC;
  signal NLW_PWM_AXI_triple_4_PWM_out1_UNCONNECTED : STD_LOGIC;
  signal NLW_PWM_AXI_triple_4_PWM_out2_UNCONNECTED : STD_LOGIC;
  signal NLW_PWM_AXI_triple_5_PWM_out1_UNCONNECTED : STD_LOGIC;
  signal NLW_PWM_AXI_triple_5_PWM_out2_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_kill_switch_0_counter_out_UNCONNECTED : STD_LOGIC;
  signal NLW_kill_switch_0_kill_RC_out_UNCONNECTED : STD_LOGIC;
  signal NLW_kill_switch_0_kill_hb_out_UNCONNECTED : STD_LOGIC;
  signal NLW_kill_switch_0_kill_ns_out_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_processing_system7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_processing_system7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_processing_system7_0_100M1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_150M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_processing_system7_0_150M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_150M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_tc_0_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED : STD_LOGIC;
begin
  BL <= kill_switch_0_pwmo_2;
  BR <= kill_switch_0_pwmo_3;
  Core0_nIRQ_1 <= Core0_nIRQ;
  Core1_nIRQ_1 <= Core1_nIRQ;
  DDC_scl_o <= dvi2rgb_0_DDC_SCL_O;
  DDC_scl_t <= dvi2rgb_0_DDC_SCL_T;
  DDC_sda_o <= dvi2rgb_0_DDC_SDA_O;
  DDC_sda_t <= dvi2rgb_0_DDC_SDA_T;
  FCLK_CLK0 <= rc_kill_1;
  FL <= kill_switch_0_pwmo_0;
  FR <= kill_switch_0_pwmo_1;
  HDMI_OEN(0) <= xlconstant_0_dout(0);
  IIC_0_scl_o <= processing_system7_0_IIC_1_SCL_O;
  IIC_0_scl_t <= processing_system7_0_IIC_1_SCL_T;
  IIC_0_sda_o <= processing_system7_0_IIC_1_SDA_O;
  IIC_0_sda_t <= processing_system7_0_IIC_1_SDA_T;
  Mode_switch_1 <= Mode_switch;
  PWM_inductive <= PWM_AXI_triple_4_PWM_out0;
  RC_in_3_1 <= rudd;
  Sonar_1 <= Sonar;
  Sounder <= PWM_AXI_triple_5_PWM_out0;
  TMDS_1_CLK_N <= TMDS_clk_n;
  TMDS_1_CLK_P <= TMDS_clk_p;
  TMDS_1_DATA_N(2 downto 0) <= TMDS_data_n(2 downto 0);
  TMDS_1_DATA_P(2 downto 0) <= TMDS_data_p(2 downto 0);
  aile_1 <= aile;
  dvi2rgb_0_DDC_SCL_I <= DDC_scl_i;
  dvi2rgb_0_DDC_SDA_I <= DDC_sda_i;
  elev_1 <= elev;
  gpio_testpin_tri_o(0) <= axi_gpio_testpins_GPIO_TRI_O(0);
  hdmi_hpd_tri_o(0) <= axi_gpio_0_GPIO2_TRI_O(0);
  leds_4bits_tri_o(3 downto 0) <= axi_gpio_led_GPIO_TRI_O(3 downto 0);
  mode_inductive_1 <= mode_inductive;
  processing_system7_0_IIC_1_SCL_I <= IIC_0_scl_i;
  processing_system7_0_IIC_1_SDA_I <= IIC_0_sda_i;
  rc_kill_1 <= rc_kill;
  rc_kill_out <= kill_switch_0_rc_kill_out;
  throttle_1 <= throttle;
  tuner_1 <= tuner;
B: component drone_B_0
     port map (
      Din(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      Dout(7 downto 0) => B_Dout(7 downto 0)
    );
DVBOutputBuffer_0: component drone_DVBOutputBuffer_0_0
     port map (
      axi_aclk => processing_system7_0_FCLK_CLK0,
      axi_araddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      axi_arready => processing_system7_0_axi_periph_M03_AXI_ARREADY,
      axi_arvalid => processing_system7_0_axi_periph_M03_AXI_ARVALID,
      axi_awaddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      axi_awready => processing_system7_0_axi_periph_M03_AXI_AWREADY,
      axi_awvalid => processing_system7_0_axi_periph_M03_AXI_AWVALID,
      axi_bready => processing_system7_0_axi_periph_M03_AXI_BREADY,
      axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      axi_bvalid => processing_system7_0_axi_periph_M03_AXI_BVALID,
      axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      axi_rready => processing_system7_0_axi_periph_M03_AXI_RREADY,
      axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      axi_rvalid => processing_system7_0_axi_periph_M03_AXI_RVALID,
      axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      axi_wready => processing_system7_0_axi_periph_M03_AXI_WREADY,
      axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      axi_wvalid => processing_system7_0_axi_periph_M03_AXI_WVALID,
      fifo_dout(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      fifo_empty => fifo_generator_0_empty,
      fifo_rd_en => DVBOutputBuffer_0_fifo_rd_en
    );
G: component drone_G_0
     port map (
      Din(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      Dout(7 downto 0) => G_Dout(7 downto 0)
    );
ModemS2Control_0: component drone_ModemS2Control_0_0
     port map (
      ctrl_allowDummy => ModemS2Control_0_ctrl_allowDummy,
      ctrl_blockSize => ModemS2Control_0_ctrl_blockSize,
      ctrl_modCod(4 downto 0) => ModemS2Control_0_ctrl_modCod(4 downto 0),
      ctrl_nullPid(7 downto 0) => ModemS2Control_0_ctrl_nullPid(7 downto 0),
      ctrl_padNull => ModemS2Control_0_ctrl_padNull,
      ctrl_pilot => ModemS2Control_0_ctrl_pilot,
      ctrl_reset => ModemS2Control_0_ctrl_reset,
      modem_gain(9 downto 0) => ModemS2Control_0_modem_gain(9 downto 0),
      modem_int_config(4 downto 0) => ModemS2Control_0_modem_int_config(4 downto 0),
      modem_rolloff_config(1 downto 0) => ModemS2Control_0_modem_rolloff_config(1 downto 0),
      out_data_config(3 downto 0) => ModemS2Control_0_out_data_config(3 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK3,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M13_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M13_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M13_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M13_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M13_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M13_AXI_AWVALID,
      s00_axi_bready => processing_system7_0_axi_periph_M13_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M13_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M13_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M13_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M13_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M13_AXI_WVALID
    );
ModemS2Zybo_0: component drone_ModemS2Zybo_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK3,
      ctrl_allowDummy => ModemS2Control_0_ctrl_allowDummy,
      ctrl_blockSize => ModemS2Control_0_ctrl_blockSize,
      ctrl_modCod(4 downto 0) => ModemS2Control_0_ctrl_modCod(4 downto 0),
      ctrl_nullPid(7 downto 0) => ModemS2Control_0_ctrl_nullPid(7 downto 0),
      ctrl_padNull => ModemS2Control_0_ctrl_padNull,
      ctrl_pilot => ModemS2Control_0_ctrl_pilot,
      ctrl_reset => ModemS2Control_0_ctrl_reset,
      fifo_data(31 downto 0) => ModemS2Zybo_0_fifo_data(31 downto 0),
      fifo_full => fifo_generator_0_full,
      fifo_wr_en => ModemS2Zybo_0_fifo_wr_en,
      modem_gain(9 downto 0) => ModemS2Control_0_modem_gain(9 downto 0),
      modem_int_config(4 downto 0) => ModemS2Control_0_modem_int_config(4 downto 0),
      modem_rolloff_config(1 downto 0) => ModemS2Control_0_modem_rolloff_config(1 downto 0),
      mpeg_input0_data(7 downto 0) => axi_dma_0_m_axis_mm2s_tdata(7 downto 0),
      mpeg_input0_inputValid => axi_dma_0_m_axis_mm2s_tvalid,
      mpeg_input0_readyForPreviousBlock => ModemS2Zybo_0_mpeg_input0_readyForPreviousBlock,
      out_data_config(3 downto 0) => ModemS2Control_0_out_data_config(3 downto 0),
      status_muxFrameOut => NLW_ModemS2Zybo_0_status_muxFrameOut_UNCONNECTED,
      status_muxNullFrameOut => NLW_ModemS2Zybo_0_status_muxNullFrameOut_UNCONNECTED,
      status_muxSyncLock(0) => NLW_ModemS2Zybo_0_status_muxSyncLock_UNCONNECTED(0),
      status_sendingDummy => NLW_ModemS2Zybo_0_status_sendingDummy_UNCONNECTED
    );
PWM_AXI_triple_0: component drone_PWM_AXI_triple_0_0
     port map (
      PWM_out0 => PWM_AXI_triple_0_PWM_out0,
      PWM_out1 => PWM_AXI_triple_0_PWM_out1,
      PWM_out2 => PWM_AXI_triple_0_PWM_out2,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M06_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M06_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M06_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M06_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M06_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M06_AXI_AWVALID,
      s00_axi_bready => processing_system7_0_axi_periph_M06_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M06_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M06_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M06_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M06_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M06_AXI_WVALID
    );
PWM_AXI_triple_3: component drone_PWM_AXI_triple_3_0
     port map (
      PWM_out0 => PWM_AXI_triple_3_PWM_out0,
      PWM_out1 => NLW_PWM_AXI_triple_3_PWM_out1_UNCONNECTED,
      PWM_out2 => NLW_PWM_AXI_triple_3_PWM_out2_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M08_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M08_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M08_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M08_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M08_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M08_AXI_AWVALID,
      s00_axi_bready => processing_system7_0_axi_periph_M08_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M08_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M08_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M08_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M08_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M08_AXI_WVALID
    );
PWM_AXI_triple_4: component drone_PWM_AXI_triple_4_0
     port map (
      PWM_out0 => PWM_AXI_triple_4_PWM_out0,
      PWM_out1 => NLW_PWM_AXI_triple_4_PWM_out1_UNCONNECTED,
      PWM_out2 => NLW_PWM_AXI_triple_4_PWM_out2_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M09_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M09_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M09_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M09_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M09_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M09_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M09_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M09_AXI_AWVALID,
      s00_axi_bready => processing_system7_0_axi_periph_M09_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M09_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M09_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M09_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M09_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M09_AXI_WVALID
    );
PWM_AXI_triple_5: component drone_PWM_AXI_triple_5_0
     port map (
      PWM_out0 => PWM_AXI_triple_5_PWM_out0,
      PWM_out1 => NLW_PWM_AXI_triple_5_PWM_out1_UNCONNECTED,
      PWM_out2 => NLW_PWM_AXI_triple_5_PWM_out2_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M10_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M10_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M10_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M10_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M10_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M10_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M10_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M10_AXI_AWVALID,
      s00_axi_bready => processing_system7_0_axi_periph_M10_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M10_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M10_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M10_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M10_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M10_AXI_WVALID
    );
R: component drone_R_0
     port map (
      Din(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      Dout(7 downto 0) => R_Dout(7 downto 0)
    );
RC_0: component drone_RC_0_0
     port map (
      RC_in0 => throttle_1,
      RC_in1 => aile_1,
      RC_in2 => elev_1,
      RC_in3 => RC_in_3_1,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M01_AXI_ARVALID(0),
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M01_AXI_AWVALID(0),
      s00_axi_bready => processing_system7_0_axi_periph_M01_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M01_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M01_AXI_WVALID(0)
    );
RC_1: component drone_RC_1_0
     port map (
      RC_in0 => Mode_switch_1,
      RC_in1 => Sonar_1,
      RC_in2 => mode_inductive_1,
      RC_in3 => tuner_1,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => processing_system7_0_axi_periph_M02_AXI_ARREADY,
      s00_axi_arvalid => processing_system7_0_axi_periph_M02_AXI_ARVALID(0),
      s00_axi_awaddr(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => processing_system7_0_axi_periph_M02_AXI_AWREADY,
      s00_axi_awvalid => processing_system7_0_axi_periph_M02_AXI_AWVALID(0),
      s00_axi_bready => processing_system7_0_axi_periph_M02_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => processing_system7_0_axi_periph_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => processing_system7_0_axi_periph_M02_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => processing_system7_0_axi_periph_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => processing_system7_0_axi_periph_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => processing_system7_0_axi_periph_M02_AXI_WVALID(0)
    );
axi_dma_0: component drone_axi_dma_0_0
     port map (
      axi_resetn => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK3,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_sg_aclk => processing_system7_0_FCLK_CLK3,
      m_axi_sg_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_dma_0_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_dma_0_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_dma_0_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_dma_0_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_dma_0_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_dma_0_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_dma_0_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_dma_0_M_AXI_SG_WVALID,
      m_axis_mm2s_tdata(7 downto 0) => axi_dma_0_m_axis_mm2s_tdata(7 downto 0),
      m_axis_mm2s_tkeep(0) => NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED(0),
      m_axis_mm2s_tlast => NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => ModemS2Zybo_0_mpeg_input0_readyForPreviousBlock,
      m_axis_mm2s_tvalid => axi_dma_0_m_axis_mm2s_tvalid,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK3,
      s_axi_lite_araddr(9 downto 0) => processing_system7_0_axi_periph_M12_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => processing_system7_0_axi_periph_M12_AXI_ARREADY,
      s_axi_lite_arvalid => processing_system7_0_axi_periph_M12_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => processing_system7_0_axi_periph_M12_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => processing_system7_0_axi_periph_M12_AXI_AWREADY,
      s_axi_lite_awvalid => processing_system7_0_axi_periph_M12_AXI_AWVALID,
      s_axi_lite_bready => processing_system7_0_axi_periph_M12_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => processing_system7_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => processing_system7_0_axi_periph_M12_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => processing_system7_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => processing_system7_0_axi_periph_M12_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => processing_system7_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => processing_system7_0_axi_periph_M12_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => processing_system7_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => processing_system7_0_axi_periph_M12_AXI_WREADY,
      s_axi_lite_wvalid => processing_system7_0_axi_periph_M12_AXI_WVALID
    );
axi_gpio_led: component drone_axi_gpio_led_0
     port map (
      gpio2_io_o(0) => axi_gpio_led_gpio2_io_o(0),
      gpio_io_o(3 downto 0) => axi_gpio_led_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => processing_system7_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M00_AXI_WVALID(0)
    );
axi_gpio_testpins: component drone_axi_gpio_testpins_0
     port map (
      gpio_io_o(0) => axi_gpio_testpins_GPIO_TRI_O(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M11_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M11_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M11_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M11_AXI_AWVALID(0),
      s_axi_bready => processing_system7_0_axi_periph_M11_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M11_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M11_AXI_WVALID(0)
    );
axi_gpio_video: component drone_axi_gpio_video_0
     port map (
      gpio2_io_i(0) => dvi2rgb_0_aPixelClkLckd,
      gpio_io_o(0) => axi_gpio_0_GPIO2_TRI_O(0),
      ip2intc_irpt => axi_gpio_video_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M07_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M07_AXI_AWVALID(0),
      s_axi_bready => processing_system7_0_axi_periph_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M07_AXI_WVALID(0)
    );
axi_mem_intercon: entity work.drone_axi_mem_intercon_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK1,
      ARESETN(0) => rst_processing_system7_0_150M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK1,
      M00_ARESETN(0) => rst_processing_system7_0_150M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => axi_mem_intercon_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => axi_mem_intercon_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(1 downto 0) => axi_mem_intercon_M00_AXI_WID(1 downto 0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK1,
      S00_ARESETN(0) => rst_processing_system7_0_150M_peripheral_aresetn(0),
      S00_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(31 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S00_AXI_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK3,
      S01_ARESETN(0) => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      S01_AXI_arready => axi_dma_0_M_AXI_SG_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      S01_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      S01_AXI_awready => axi_dma_0_M_AXI_SG_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      S01_AXI_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      S01_AXI_bready => axi_dma_0_M_AXI_SG_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      S01_AXI_rlast => axi_dma_0_M_AXI_SG_RLAST,
      S01_AXI_rready => axi_dma_0_M_AXI_SG_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      S01_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      S01_AXI_wlast => axi_dma_0_M_AXI_SG_WLAST,
      S01_AXI_wready => axi_dma_0_M_AXI_SG_WREADY,
      S01_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      S01_AXI_wvalid => axi_dma_0_M_AXI_SG_WVALID,
      S02_ACLK => processing_system7_0_FCLK_CLK3,
      S02_ARESETN(0) => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S02_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S02_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S02_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S02_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S02_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S02_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S02_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID
    );
axi_vdma_0: component drone_axi_vdma_0_0
     port map (
      axi_resetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => processing_system7_0_axi_periph_M05_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => processing_system7_0_axi_periph_M05_AXI_ARREADY,
      s_axi_lite_arvalid => processing_system7_0_axi_periph_M05_AXI_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => processing_system7_0_axi_periph_M05_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => processing_system7_0_axi_periph_M05_AXI_AWREADY,
      s_axi_lite_awvalid => processing_system7_0_axi_periph_M05_AXI_AWVALID(0),
      s_axi_lite_bready => processing_system7_0_axi_periph_M05_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => processing_system7_0_axi_periph_M05_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => processing_system7_0_axi_periph_M05_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => processing_system7_0_axi_periph_M05_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => processing_system7_0_axi_periph_M05_AXI_WREADY,
      s_axi_lite_wvalid => processing_system7_0_axi_periph_M05_AXI_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK1,
      s_axis_s2mm_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      s_axis_s2mm_tkeep(2 downto 0) => B"111",
      s_axis_s2mm_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_s2mm_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_s2mm_tuser(0) => v_vid_in_axi4s_0_video_out_TUSER,
      s_axis_s2mm_tvalid => v_vid_in_axi4s_0_video_out_TVALID
    );
dvi2rgb_0: component drone_dvi2rgb_0_0
     port map (
      DDC_SCL_I => dvi2rgb_0_DDC_SCL_I,
      DDC_SCL_O => dvi2rgb_0_DDC_SCL_O,
      DDC_SCL_T => dvi2rgb_0_DDC_SCL_T,
      DDC_SDA_I => dvi2rgb_0_DDC_SDA_I,
      DDC_SDA_O => dvi2rgb_0_DDC_SDA_O,
      DDC_SDA_T => dvi2rgb_0_DDC_SDA_T,
      PixelClk => dvi2rgb_0_PixelClk,
      RefClk => processing_system7_0_FCLK_CLK2,
      TMDS_Clk_n => TMDS_1_CLK_N,
      TMDS_Clk_p => TMDS_1_CLK_P,
      TMDS_Data_n(2 downto 0) => TMDS_1_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => TMDS_1_DATA_P(2 downto 0),
      aPixelClkLckd => dvi2rgb_0_aPixelClkLckd,
      aRst_n => rst_processing_system7_0_100M_peripheral_aresetn(0),
      pRst_n => '1',
      vid_pData(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      vid_pHSync => dvi2rgb_0_vid_pHSync,
      vid_pVDE => dvi2rgb_0_vid_pVDE,
      vid_pVSync => dvi2rgb_0_vid_pVSync
    );
fifo_generator_0: component drone_fifo_generator_0_0
     port map (
      din(31 downto 0) => ModemS2Zybo_0_fifo_data(31 downto 0),
      dout(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => processing_system7_0_FCLK_CLK0,
      rd_en => DVBOutputBuffer_0_fifo_rd_en,
      wr_clk => processing_system7_0_FCLK_CLK3,
      wr_en => ModemS2Zybo_0_fifo_wr_en
    );
kill_switch_0: component drone_kill_switch_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      counter_out => NLW_kill_switch_0_counter_out_UNCONNECTED,
      heartbeat => axi_gpio_led_gpio2_io_o(0),
      kill_RC_out => NLW_kill_switch_0_kill_RC_out_UNCONNECTED,
      kill_hb_out => NLW_kill_switch_0_kill_hb_out_UNCONNECTED,
      kill_ns_out => NLW_kill_switch_0_kill_ns_out_UNCONNECTED,
      pwm0 => PWM_AXI_triple_0_PWM_out0,
      pwm1 => PWM_AXI_triple_0_PWM_out1,
      pwm2 => PWM_AXI_triple_0_PWM_out2,
      pwm3 => PWM_AXI_triple_3_PWM_out0,
      pwmo_0 => kill_switch_0_pwmo_0,
      pwmo_1 => kill_switch_0_pwmo_1,
      pwmo_2 => kill_switch_0_pwmo_2,
      pwmo_3 => kill_switch_0_pwmo_3,
      rc_kill => rc_kill_1,
      total_kill_out => kill_switch_0_rc_kill_out
    );
proc_sys_reset_0: component drone_proc_sys_reset_0_0
     port map (
      aux_reset_in => dvi2rgb_0_aPixelClkLckd,
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => dvi2rgb_0_PixelClk
    );
processing_system7_0: component drone_processing_system7_0_0
     port map (
      Core0_nIRQ => Core0_nIRQ_1,
      Core1_nIRQ => Core1_nIRQ_1,
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK2,
      FCLK_CLK3 => processing_system7_0_FCLK_CLK3,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      FCLK_RESET3_N => processing_system7_0_FCLK_RESET3_N,
      I2C1_SCL_I => processing_system7_0_IIC_1_SCL_I,
      I2C1_SCL_O => processing_system7_0_IIC_1_SCL_O,
      I2C1_SCL_T => processing_system7_0_IIC_1_SCL_T,
      I2C1_SDA_I => processing_system7_0_IIC_1_SDA_I,
      I2C1_SDA_O => processing_system7_0_IIC_1_SDA_O,
      I2C1_SDA_T => processing_system7_0_IIC_1_SDA_T,
      IRQ_F2P(3 downto 0) => xlconcat_0_dout(3 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SDIO0_WP => xlconstant_1_dout(0),
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK1,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 2) => B"0000",
      S_AXI_HP0_ARID(1 downto 0) => axi_mem_intercon_M00_AXI_ARID(1 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_mem_intercon_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_mem_intercon_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 2) => B"0000",
      S_AXI_HP0_AWID(1 downto 0) => axi_mem_intercon_M00_AXI_AWID(1 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_mem_intercon_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_mem_intercon_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_mem_intercon_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_mem_intercon_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_mem_intercon_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_mem_intercon_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_mem_intercon_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 2) => B"0000",
      S_AXI_HP0_WID(1 downto 0) => axi_mem_intercon_M00_AXI_WID(1 downto 0),
      S_AXI_HP0_WLAST => axi_mem_intercon_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_mem_intercon_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_mem_intercon_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
processing_system7_0_axi_periph: entity work.drone_processing_system7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN(0) => rst_processing_system7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => processing_system7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => processing_system7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => processing_system7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => processing_system7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => processing_system7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => processing_system7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => processing_system7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => processing_system7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => processing_system7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => processing_system7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready(0) => processing_system7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => processing_system7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready(0) => processing_system7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => processing_system7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => processing_system7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => processing_system7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => processing_system7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => processing_system7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => processing_system7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => processing_system7_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => processing_system7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => processing_system7_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => processing_system7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => processing_system7_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => processing_system7_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => processing_system7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => processing_system7_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => processing_system7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => processing_system7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => processing_system7_0_axi_periph_M02_AXI_WVALID(0),
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => processing_system7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => processing_system7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => processing_system7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => processing_system7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => processing_system7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => processing_system7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => processing_system7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => processing_system7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => processing_system7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => processing_system7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => processing_system7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid => processing_system7_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => processing_system7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid => processing_system7_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bready => processing_system7_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => processing_system7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => processing_system7_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => processing_system7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => processing_system7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => processing_system7_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => processing_system7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => processing_system7_0_axi_periph_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => processing_system7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => processing_system7_0_axi_periph_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => processing_system7_0_axi_periph_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => processing_system7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => processing_system7_0_axi_periph_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => processing_system7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => processing_system7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wvalid(0) => processing_system7_0_axi_periph_M05_AXI_WVALID(0),
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => processing_system7_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => processing_system7_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => processing_system7_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => processing_system7_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => processing_system7_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => processing_system7_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => processing_system7_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => processing_system7_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => processing_system7_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => processing_system7_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => processing_system7_0_FCLK_CLK0,
      M07_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready(0) => processing_system7_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => processing_system7_0_axi_periph_M07_AXI_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready(0) => processing_system7_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => processing_system7_0_axi_periph_M07_AXI_AWVALID(0),
      M07_AXI_bready(0) => processing_system7_0_axi_periph_M07_AXI_BREADY(0),
      M07_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => processing_system7_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => processing_system7_0_axi_periph_M07_AXI_RREADY(0),
      M07_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => processing_system7_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => processing_system7_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => processing_system7_0_axi_periph_M07_AXI_WVALID(0),
      M08_ACLK => processing_system7_0_FCLK_CLK0,
      M08_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arready => processing_system7_0_axi_periph_M08_AXI_ARREADY,
      M08_AXI_arvalid => processing_system7_0_axi_periph_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awready => processing_system7_0_axi_periph_M08_AXI_AWREADY,
      M08_AXI_awvalid => processing_system7_0_axi_periph_M08_AXI_AWVALID,
      M08_AXI_bready => processing_system7_0_axi_periph_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => processing_system7_0_axi_periph_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => processing_system7_0_axi_periph_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => processing_system7_0_axi_periph_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => processing_system7_0_axi_periph_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => processing_system7_0_axi_periph_M08_AXI_WVALID,
      M09_ACLK => processing_system7_0_FCLK_CLK0,
      M09_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M09_AXI_ARPROT(2 downto 0),
      M09_AXI_arready => processing_system7_0_axi_periph_M09_AXI_ARREADY,
      M09_AXI_arvalid => processing_system7_0_axi_periph_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M09_AXI_AWPROT(2 downto 0),
      M09_AXI_awready => processing_system7_0_axi_periph_M09_AXI_AWREADY,
      M09_AXI_awvalid => processing_system7_0_axi_periph_M09_AXI_AWVALID,
      M09_AXI_bready => processing_system7_0_axi_periph_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => processing_system7_0_axi_periph_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => processing_system7_0_axi_periph_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => processing_system7_0_axi_periph_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => processing_system7_0_axi_periph_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => processing_system7_0_axi_periph_M09_AXI_WVALID,
      M10_ACLK => processing_system7_0_FCLK_CLK0,
      M10_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M10_AXI_ARPROT(2 downto 0),
      M10_AXI_arready => processing_system7_0_axi_periph_M10_AXI_ARREADY,
      M10_AXI_arvalid => processing_system7_0_axi_periph_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M10_AXI_AWPROT(2 downto 0),
      M10_AXI_awready => processing_system7_0_axi_periph_M10_AXI_AWREADY,
      M10_AXI_awvalid => processing_system7_0_axi_periph_M10_AXI_AWVALID,
      M10_AXI_bready => processing_system7_0_axi_periph_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => processing_system7_0_axi_periph_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => processing_system7_0_axi_periph_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => processing_system7_0_axi_periph_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => processing_system7_0_axi_periph_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => processing_system7_0_axi_periph_M10_AXI_WVALID,
      M11_ACLK => processing_system7_0_FCLK_CLK0,
      M11_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready(0) => processing_system7_0_axi_periph_M11_AXI_ARREADY,
      M11_AXI_arvalid(0) => processing_system7_0_axi_periph_M11_AXI_ARVALID(0),
      M11_AXI_awaddr(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready(0) => processing_system7_0_axi_periph_M11_AXI_AWREADY,
      M11_AXI_awvalid(0) => processing_system7_0_axi_periph_M11_AXI_AWVALID(0),
      M11_AXI_bready(0) => processing_system7_0_axi_periph_M11_AXI_BREADY(0),
      M11_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid(0) => processing_system7_0_axi_periph_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready(0) => processing_system7_0_axi_periph_M11_AXI_RREADY(0),
      M11_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid(0) => processing_system7_0_axi_periph_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready(0) => processing_system7_0_axi_periph_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid(0) => processing_system7_0_axi_periph_M11_AXI_WVALID(0),
      M12_ACLK => processing_system7_0_FCLK_CLK3,
      M12_ARESETN(0) => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      M12_AXI_araddr(9 downto 0) => processing_system7_0_axi_periph_M12_AXI_ARADDR(9 downto 0),
      M12_AXI_arready => processing_system7_0_axi_periph_M12_AXI_ARREADY,
      M12_AXI_arvalid => processing_system7_0_axi_periph_M12_AXI_ARVALID,
      M12_AXI_awaddr(9 downto 0) => processing_system7_0_axi_periph_M12_AXI_AWADDR(9 downto 0),
      M12_AXI_awready => processing_system7_0_axi_periph_M12_AXI_AWREADY,
      M12_AXI_awvalid => processing_system7_0_axi_periph_M12_AXI_AWVALID,
      M12_AXI_bready => processing_system7_0_axi_periph_M12_AXI_BREADY,
      M12_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid => processing_system7_0_axi_periph_M12_AXI_BVALID,
      M12_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready => processing_system7_0_axi_periph_M12_AXI_RREADY,
      M12_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid => processing_system7_0_axi_periph_M12_AXI_RVALID,
      M12_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready => processing_system7_0_axi_periph_M12_AXI_WREADY,
      M12_AXI_wvalid => processing_system7_0_axi_periph_M12_AXI_WVALID,
      M13_ACLK => processing_system7_0_FCLK_CLK3,
      M13_ARESETN(0) => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      M13_AXI_araddr(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_ARADDR(3 downto 0),
      M13_AXI_arprot(2 downto 0) => processing_system7_0_axi_periph_M13_AXI_ARPROT(2 downto 0),
      M13_AXI_arready => processing_system7_0_axi_periph_M13_AXI_ARREADY,
      M13_AXI_arvalid => processing_system7_0_axi_periph_M13_AXI_ARVALID,
      M13_AXI_awaddr(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_AWADDR(3 downto 0),
      M13_AXI_awprot(2 downto 0) => processing_system7_0_axi_periph_M13_AXI_AWPROT(2 downto 0),
      M13_AXI_awready => processing_system7_0_axi_periph_M13_AXI_AWREADY,
      M13_AXI_awvalid => processing_system7_0_axi_periph_M13_AXI_AWVALID,
      M13_AXI_bready => processing_system7_0_axi_periph_M13_AXI_BREADY,
      M13_AXI_bresp(1 downto 0) => processing_system7_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      M13_AXI_bvalid => processing_system7_0_axi_periph_M13_AXI_BVALID,
      M13_AXI_rdata(31 downto 0) => processing_system7_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      M13_AXI_rready => processing_system7_0_axi_periph_M13_AXI_RREADY,
      M13_AXI_rresp(1 downto 0) => processing_system7_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      M13_AXI_rvalid => processing_system7_0_axi_periph_M13_AXI_RVALID,
      M13_AXI_wdata(31 downto 0) => processing_system7_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      M13_AXI_wready => processing_system7_0_axi_periph_M13_AXI_WREADY,
      M13_AXI_wstrb(3 downto 0) => processing_system7_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      M13_AXI_wvalid => processing_system7_0_axi_periph_M13_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rst_processing_system7_0_100M: component drone_rst_processing_system7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_processing_system7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_processing_system7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_processing_system7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_processing_system7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
rst_processing_system7_0_100M1: component drone_rst_processing_system7_0_100M1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_processing_system7_0_100M1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET3_N,
      interconnect_aresetn(0) => NLW_rst_processing_system7_0_100M1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_processing_system7_0_100M1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_processing_system7_0_100M1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_processing_system7_0_100M1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK3
    );
rst_processing_system7_0_150M: component drone_rst_processing_system7_0_150M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_processing_system7_0_150M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_processing_system7_0_150M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_processing_system7_0_150M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_processing_system7_0_150M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_processing_system7_0_150M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
v_tc_0: component drone_v_tc_0_0
     port map (
      active_video_in => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      clk => dvi2rgb_0_PixelClk,
      clken => '1',
      det_clken => '1',
      hsync_in => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      intc_if(31 downto 0) => NLW_v_tc_0_intc_if_UNCONNECTED(31 downto 0),
      irq => v_tc_0_irq,
      resetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => processing_system7_0_axi_periph_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_processing_system7_0_100M_peripheral_aresetn(0),
      s_axi_arready => processing_system7_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arvalid => processing_system7_0_axi_periph_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => processing_system7_0_axi_periph_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => processing_system7_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awvalid => processing_system7_0_axi_periph_M04_AXI_AWVALID,
      s_axi_bready => processing_system7_0_axi_periph_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => processing_system7_0_axi_periph_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => processing_system7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => processing_system7_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_axi_periph_M04_AXI_WVALID,
      vsync_in => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
v_vid_in_axi4s_0: component drone_v_vid_in_axi4s_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK1,
      aclken => '1',
      aresetn => '1',
      axis_enable => '1',
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      m_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => dvi2rgb_0_vid_pVDE,
      vid_data(23 downto 0) => xlconcat_1_dout(23 downto 0),
      vid_field_id => '0',
      vid_hblank => '0',
      vid_hsync => dvi2rgb_0_vid_pHSync,
      vid_io_in_ce => '1',
      vid_io_in_clk => dvi2rgb_0_PixelClk,
      vid_io_in_reset => proc_sys_reset_0_peripheral_reset(0),
      vid_vblank => '0',
      vid_vsync => dvi2rgb_0_vid_pVSync,
      vtd_active_video => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED,
      vtd_hsync => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      vtd_vblank => NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED,
      vtd_vsync => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
xlconcat_0: component drone_xlconcat_0_0
     port map (
      In0(0) => axi_vdma_0_s2mm_introut,
      In1(0) => v_tc_0_irq,
      In2(0) => axi_gpio_video_ip2intc_irpt,
      In3(0) => axi_dma_0_mm2s_introut,
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconcat_1: component drone_xlconcat_1_0
     port map (
      In0(7 downto 0) => R_Dout(7 downto 0),
      In1(7 downto 0) => B_Dout(7 downto 0),
      In2(7 downto 0) => G_Dout(7 downto 0),
      dout(23 downto 0) => xlconcat_1_dout(23 downto 0)
    );
xlconstant_0: component drone_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component drone_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
