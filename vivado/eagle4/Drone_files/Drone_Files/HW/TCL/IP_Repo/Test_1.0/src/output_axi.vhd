library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- This block exposes a FIFO as a large contiguous block of memory
-- so that the USB controller can read from it as it would read
-- an URB from DDR.
--
-- Reference: AMBA AXI and ACE Protocol Specification 
-- You can get it from ARM. Alternatively it is included in the documentation provided with
-- this project under the name AXI4_specification.pdf .
--
-- This block implements AXI4-Lite. At 100MHz this becomes a bottleneck at 17Msps. 
-- If this limitated was removed (not that difficult to do) performance up to ~18.5Msps 
-- could be acheived.

entity output_axi is
generic ( -- Do not change
    C_axi_DATA_WIDTH             : integer              := 32;
    C_axi_ADDR_WIDTH             : integer              := 32
);
port(
    --- Global signals
    axi_aclk                     : in  std_logic;
    axi_aresetn                  : in  std_logic;
    --- Write address channel
    axi_awaddr                   : in  std_logic_vector(C_axi_ADDR_WIDTH-1 downto 0);
    axi_awvalid                  : in  std_logic;
    axi_awready                  : out std_logic;
    axi_awprot                   : in std_logic_vector(2 downto 0);
    --- Write data channel
    axi_wdata                    : in  std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
    axi_wvalid                   : in  std_logic;
    axi_wready                   : out std_logic;
    axi_wstrb                    : in  std_logic_vector((C_axi_DATA_WIDTH/8)-1 downto 0);
    --- Write response channel
    axi_bvalid                   : out std_logic;
    axi_bready                   : in  std_logic;
    axi_bresp                    : out std_logic_vector(1 downto 0);
    --- Read address channel
    axi_araddr                   : in  std_logic_vector(C_axi_ADDR_WIDTH-1 downto 0);
    axi_arvalid                  : in  std_logic;
    axi_arready                  : out std_logic; 
    axi_arprot                   : in std_logic_vector(2 downto 0);
    --- Read data channel
    axi_rdata                    : out std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
    axi_rvalid                   : out std_logic;
    axi_rready                   : in  std_logic;
    axi_rresp                    : out std_logic_vector(1 downto 0);
    
    -- Interface to the FIFO
    fifo_dout                    : in std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
    fifo_empty                   : in std_logic;
    fifo_rd_en                   : out std_logic
);
end output_axi;

architecture output_axi_arch of output_axi is
    type read_state is (wait_addr, read);
    signal read_fsm_state : read_state;
    
    type write_state is (wait_addr, write_wait, write_resp);
    signal write_fsm_state : write_state;

    signal fifo_output_buffer: std_logic_vector(C_axi_DATA_WIDTH-1 downto 0);
    signal slave_reg: std_logic_vector(C_axi_DATA_WIDTH-1 downto 0) := (others=>'0');

begin

    -- We never fail a read or write transaction
    axi_bresp <= "00";
    axi_rresp <= "00";

    -- The buffered FIFO output is what the master will read, maybe endian swapped
    axi_rdata <=      fifo_output_buffer when slave_reg(0) = '0'
                 else fifo_output_buffer(7 downto 0) &
                      fifo_output_buffer(15 downto 8) &
                      fifo_output_buffer(23 downto 16) &
                      fifo_output_buffer(31 downto 24);

    axi_slaveProc: process(axi_aclk) 
    begin
        if (rising_edge(axi_aclk)) then
            if(axi_aresetn = '0') then
                -- Master guarantees that ARVALID and AWVALID are low, thus we can set
                -- the wait_addr state without risk.
                read_fsm_state <= wait_addr;
                write_fsm_state <= wait_addr;
                
                fifo_rd_en <= '0';
            else
                fifo_rd_en <= '0';
                case read_fsm_state is
                    when wait_addr =>
                        -- A transaction starts by writing an address on the read address channel.
                        if (axi_arvalid = '1') then
                            -- The address is valid here, but we don't care about it.
                            -- Request a new output from the FIFO, and buffer the current one.
                            fifo_rd_en <= '1';
                            if(slave_reg(1)='0') then
                                -- Normal mode
                                fifo_output_buffer <= fifo_dout;
                            else
                                -- Loopback + fifo status debug mode
                                fifo_output_buffer <= fifo_empty & slave_reg(C_axi_DATA_WIDTH-2 downto 0);
                            end if;
                            -- Try to pass the result to the master.
                            read_fsm_state <= read;
                        end if;
                    when read =>
                        -- Our output is valid, the read is done when the master is ready
                        if (axi_rready = '1') then
                            read_fsm_state <= wait_addr;
                        end if;
                end case;
    
                case write_fsm_state is
                    when wait_addr =>
                        if (axi_awvalid = '1') then
                            -- The address is valid here, but we don't care about it.
                            -- The slave implements a single 32-bit register, that listens to
                            -- any address.
                            write_fsm_state <= write_wait;
                        end if;
                    when write_wait =>
                        -- Wait for the master to provide the data
                        if (axi_wvalid = '1') then
                            -- Save the data in our register (wstrb ignored, write it as a DWORD)
                            slave_reg <= axi_wdata;
                            write_fsm_state <= write_resp;
                        end if;
                    when write_resp =>
                        -- We are providing the write response, wait for the master to accept it
                        if (axi_bready = '1') then
                            write_fsm_state <= wait_addr;
                        end if;
                end case;
            end if;
        end if;
    end process;

    axi_writeReadyValid: process(write_fsm_state)
    begin
        -- By default nothing is valid or ready
        axi_wready <= '0';
        axi_awready <= '0';
        axi_bvalid <= '0';
        
        case write_fsm_state is
            when wait_addr =>
                -- We are ready for an address
                axi_awready <= '1';
            when write_wait =>
                -- Ready to receive write data
                axi_wready<= '1';
            when write_resp =>
                -- Send BRESP
                axi_bvalid <= '1';
            when others=>
        end case;
    end process;

    axi_readReadyValid: process(read_fsm_state)
    begin
        -- By default nothing is valid or ready
        axi_rvalid <= '0';
        axi_arready <= '0';

        case read_fsm_state is
            when wait_addr =>
                -- We are ready for an address
                axi_arready <= '1';
            when read =>
                -- Read data is valid
                axi_rvalid<= '1';
            when others=>
        end case;
    end process;


end architecture;
