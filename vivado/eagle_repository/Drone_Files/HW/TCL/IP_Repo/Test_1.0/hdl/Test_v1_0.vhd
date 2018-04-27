library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Test_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface axi
		C_axi_DATA_WIDTH	: integer	:= 32;
		C_axi_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface axi
		axi_aclk	: in std_logic;
		axi_aresetn	: in std_logic;
		axi_awaddr	: in std_logic_vector(C_axi_ADDR_WIDTH-1 downto 0);
		axi_awprot	: in std_logic_vector(2 downto 0);
		axi_awvalid	: in std_logic;
		axi_awready	: out std_logic;
		axi_wdata	: in std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
		axi_wstrb	: in std_logic_vector((C_axi_DATA_WIDTH/8)-1 downto 0);
		axi_wvalid	: in std_logic;
		axi_wready	: out std_logic;
		axi_bresp	: out std_logic_vector(1 downto 0);
		axi_bvalid	: out std_logic;
		axi_bready	: in std_logic;
		axi_araddr	: in std_logic_vector(C_axi_ADDR_WIDTH-1 downto 0);
		axi_arprot	: in std_logic_vector(2 downto 0);
		axi_arvalid	: in std_logic;
		axi_arready	: out std_logic;
		axi_rdata	: out std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
		axi_rresp	: out std_logic_vector(1 downto 0);
		axi_rvalid	: out std_logic;
		axi_rready	: in std_logic
	);
end Test_v1_0;

architecture arch_imp of Test_v1_0 is

	-- component declaration
	component Test_v1_0_axi is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component Test_v1_0_axi;

begin

-- Instantiation of Axi Bus Interface axi
Test_v1_0_axi_inst : Test_v1_0_axi
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_axi_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_axi_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> axi_aclk,
		S_AXI_ARESETN	=> axi_aresetn,
		S_AXI_AWADDR	=> axi_awaddr,
		S_AXI_AWPROT	=> axi_awprot,
		S_AXI_AWVALID	=> axi_awvalid,
		S_AXI_AWREADY	=> axi_awready,
		S_AXI_WDATA	=> axi_wdata,
		S_AXI_WSTRB	=> axi_wstrb,
		S_AXI_WVALID	=> axi_wvalid,
		S_AXI_WREADY	=> axi_wready,
		S_AXI_BRESP	=> axi_bresp,
		S_AXI_BVALID	=> axi_bvalid,
		S_AXI_BREADY	=> axi_bready,
		S_AXI_ARADDR	=> axi_araddr,
		S_AXI_ARPROT	=> axi_arprot,
		S_AXI_ARVALID	=> axi_arvalid,
		S_AXI_ARREADY	=> axi_arready,
		S_AXI_RDATA	=> axi_rdata,
		S_AXI_RRESP	=> axi_rresp,
		S_AXI_RVALID	=> axi_rvalid,
		S_AXI_RREADY	=> axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
