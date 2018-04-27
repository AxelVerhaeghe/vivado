
`timescale 1 ns / 1 ps

`include "Test_v1_0_tb_include.vh"

// lite_response Type Defines
`define RESPONSE_OKAY 2'b00
`define RESPONSE_EXOKAY 2'b01
`define RESP_BUS_WIDTH 2
`define BURST_TYPE_INCR  2'b01
`define BURST_TYPE_WRAP  2'b10

// AMBA AXI4 Lite Range Constants
`define axi_MAX_BURST_LENGTH 1
`define axi_DATA_BUS_WIDTH 32
`define axi_ADDRESS_BUS_WIDTH 32
`define axi_MAX_DATA_SIZE (`axi_DATA_BUS_WIDTH*`axi_MAX_BURST_LENGTH)/8

module Test_v1_0_tb;
	reg tb_ACLK;
	reg tb_ARESETn;

	// Create an instance of the example tb
	`BD_WRAPPER dut (.ACLK(tb_ACLK),
				.ARESETN(tb_ARESETn));

	// Local Variables

	// AMBA axi AXI4 Lite Local Reg
	reg [`axi_DATA_BUS_WIDTH-1:0] axi_rd_data_lite;
	reg [`axi_DATA_BUS_WIDTH-1:0] axi_test_data_lite [3:0];
	reg [`RESP_BUS_WIDTH-1:0] axi_lite_response;
	reg [`axi_ADDRESS_BUS_WIDTH-1:0] axi_mtestAddress;
	reg [3-1:0]   axi_mtestProtection_lite;
	integer axi_mtestvectorlite; // Master side testvector
	integer axi_mtestdatasizelite;
	integer result_slave_lite;


	// Simple Reset Generator and test
	initial begin
		tb_ARESETn = 1'b0;
	  #500;
		// Release the reset on the posedge of the clk.
		@(posedge tb_ACLK);
	  tb_ARESETn = 1'b1;
		@(posedge tb_ACLK);
	end

	// Simple Clock Generator
	initial tb_ACLK = 1'b0;
	always #10 tb_ACLK = !tb_ACLK;

	//------------------------------------------------------------------------
	// TEST LEVEL API: CHECK_RESPONSE_OKAY
	//------------------------------------------------------------------------
	// Description:
	// CHECK_RESPONSE_OKAY(lite_response)
	// This task checks if the return lite_response is equal to OKAY
	//------------------------------------------------------------------------
	task automatic CHECK_RESPONSE_OKAY;
		input [`RESP_BUS_WIDTH-1:0] response;
		begin
		  if (response !== `RESPONSE_OKAY) begin
			  $display("TESTBENCH ERROR! lite_response is not OKAY",
				         "\n expected = 0x%h",`RESPONSE_OKAY,
				         "\n actual   = 0x%h",response);
		    $stop;
		  end
		end
	endtask

	//------------------------------------------------------------------------
	// TEST LEVEL API: COMPARE_LITE_DATA
	//------------------------------------------------------------------------
	// Description:
	// COMPARE_LITE_DATA(expected,actual)
	// This task checks if the actual data is equal to the expected data.
	// X is used as don't care but it is not permitted for the full vector
	// to be don't care.
	//------------------------------------------------------------------------
	`define S_AXI_DATA_BUS_WIDTH 32 
	task automatic COMPARE_LITE_DATA;
		input [`S_AXI_DATA_BUS_WIDTH-1:0]expected;
		input [`S_AXI_DATA_BUS_WIDTH-1:0]actual;
		begin
			if (expected === 'hx || actual === 'hx) begin
				$display("TESTBENCH ERROR! COMPARE_LITE_DATA cannot be performed with an expected or actual vector that is all 'x'!");
		    result_slave_lite = 0;
		    $stop;
		  end

			if (actual != expected) begin
				$display("TESTBENCH ERROR! Data expected is not equal to actual.",
				         "\nexpected = 0x%h",expected,
				         "\nactual   = 0x%h",actual);
		    result_slave_lite = 0;
		    $stop;
		  end
			else 
			begin
			   $display("TESTBENCH Passed! Data expected is equal to actual.",
			            "\n expected = 0x%h",expected,
			            "\n actual   = 0x%h",actual);
			end
		end
	endtask

	task automatic axi_TEST;
		begin
			$display("---------------------------------------------------------");
			$display("EXAMPLE TEST : axi");
			$display("Simple register write and read example");
			$display("---------------------------------------------------------");

			axi_mtestvectorlite = 0;
			axi_mtestAddress = `axi_SLAVE_ADDRESS;
			axi_mtestProtection_lite = 0;
			axi_mtestdatasizelite = `axi_MAX_DATA_SIZE;

			 result_slave_lite = 1;

			for (axi_mtestvectorlite = 0; axi_mtestvectorlite <= 3; axi_mtestvectorlite = axi_mtestvectorlite + 1)
			begin
			  dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.WRITE_BURST_CONCURRENT( axi_mtestAddress,
				                     axi_mtestProtection_lite,
				                     axi_test_data_lite[axi_mtestvectorlite],
				                     axi_mtestdatasizelite,
				                     axi_lite_response);
			  $display("EXAMPLE TEST %d write : DATA = 0x%h, lite_response = 0x%h",axi_mtestvectorlite,axi_test_data_lite[axi_mtestvectorlite],axi_lite_response);
			  CHECK_RESPONSE_OKAY(axi_lite_response);
			  dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.READ_BURST(axi_mtestAddress,
				                     axi_mtestProtection_lite,
				                     axi_rd_data_lite,
				                     axi_lite_response);
			  $display("EXAMPLE TEST %d read : DATA = 0x%h, lite_response = 0x%h",axi_mtestvectorlite,axi_rd_data_lite,axi_lite_response);
			  CHECK_RESPONSE_OKAY(axi_lite_response);
			  COMPARE_LITE_DATA(axi_test_data_lite[axi_mtestvectorlite],axi_rd_data_lite);
			  $display("EXAMPLE TEST %d : Sequential write and read burst transfers complete from the master side. %d",axi_mtestvectorlite,axi_mtestvectorlite);
			  axi_mtestAddress = axi_mtestAddress + 32'h00000004;
			end

			$display("---------------------------------------------------------");
			$display("EXAMPLE TEST axi: PTGEN_TEST_FINISHED!");
				if ( result_slave_lite ) begin                                        
					$display("PTGEN_TEST: PASSED!");                 
				end	else begin                                         
					$display("PTGEN_TEST: FAILED!");                 
				end							   
			$display("---------------------------------------------------------");
		end
	endtask

	// Create the test vectors
	initial begin
		// When performing debug enable all levels of INFO messages.
		wait(tb_ARESETn === 0) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);  

		dut.`BD_INST_NAME.master_0.cdn_axi4_lite_master_bfm_inst.set_channel_level_info(1);

		// Create test data vectors
		axi_test_data_lite[0] = 32'h0101FFFF;
		axi_test_data_lite[1] = 32'habcd0001;
		axi_test_data_lite[2] = 32'hdead0011;
		axi_test_data_lite[3] = 32'hbeef0011;
	end

	// Drive the BFM
	initial begin
		// Wait for end of reset
		wait(tb_ARESETn === 0) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     
		wait(tb_ARESETn === 1) @(posedge tb_ACLK);     

		axi_TEST();

	end

endmodule
