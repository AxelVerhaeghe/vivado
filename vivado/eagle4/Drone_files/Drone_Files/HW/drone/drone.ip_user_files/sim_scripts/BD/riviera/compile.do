vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/processing_system7_bfm_v2_0_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_11
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_1_1
vlib riviera/lib_fifo_v1_0_5
vlib riviera/blk_mem_gen_v8_3_3
vlib riviera/lib_bmg_v1_0_5
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_11
vlib riviera/axi_vdma_v6_2_8
vlib riviera/proc_sys_reset_v5_0_9
vlib riviera/fifo_generator_v13_0_3
vlib riviera/v_vid_in_axi4s_v4_0_3
vlib riviera/axi_sg_v4_1_3
vlib riviera/axi_dma_v7_1_10
vlib riviera/v_tc_v6_1_8
vlib riviera/xbip_utils_v3_0_6
vlib riviera/axi_utils_v2_0_2
vlib riviera/cic_compiler_v4_0_10
vlib riviera/fir_compiler_v7_2_6
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_9
vlib riviera/axi_data_fifo_v2_1_8
vlib riviera/axi_crossbar_v2_1_10
vlib riviera/axi_protocol_converter_v2_1_9
vlib riviera/axi_clock_converter_v2_1_8
vlib riviera/axi_dwidth_converter_v2_1_9

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap processing_system7_bfm_v2_0_5 riviera/processing_system7_bfm_v2_0_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_11 riviera/axi_gpio_v2_0_11
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_1 riviera/fifo_generator_v13_1_1
vmap lib_fifo_v1_0_5 riviera/lib_fifo_v1_0_5
vmap blk_mem_gen_v8_3_3 riviera/blk_mem_gen_v8_3_3
vmap lib_bmg_v1_0_5 riviera/lib_bmg_v1_0_5
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_11 riviera/axi_datamover_v5_1_11
vmap axi_vdma_v6_2_8 riviera/axi_vdma_v6_2_8
vmap proc_sys_reset_v5_0_9 riviera/proc_sys_reset_v5_0_9
vmap fifo_generator_v13_0_3 riviera/fifo_generator_v13_0_3
vmap v_vid_in_axi4s_v4_0_3 riviera/v_vid_in_axi4s_v4_0_3
vmap axi_sg_v4_1_3 riviera/axi_sg_v4_1_3
vmap axi_dma_v7_1_10 riviera/axi_dma_v7_1_10
vmap v_tc_v6_1_8 riviera/v_tc_v6_1_8
vmap xbip_utils_v3_0_6 riviera/xbip_utils_v3_0_6
vmap axi_utils_v2_0_2 riviera/axi_utils_v2_0_2
vmap cic_compiler_v4_0_10 riviera/cic_compiler_v4_0_10
vmap fir_compiler_v7_2_6 riviera/fir_compiler_v7_2_6
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 riviera/axi_register_slice_v2_1_9
vmap axi_data_fifo_v2_1_8 riviera/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 riviera/axi_crossbar_v2_1_10
vmap axi_protocol_converter_v2_1_9 riviera/axi_protocol_converter_v2_1_9
vmap axi_clock_converter_v2_1_8 riviera/axi_clock_converter_v2_1_8
vmap axi_dwidth_converter_v2_1_9 riviera/axi_dwidth_converter_v2_1_9

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/SyncBase.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/EEPROM_8b.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/TWI_SlaveCtl.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/GlitchFilter.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/SyncAsync.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/DVI_Constants.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/SyncAsyncReset.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/PhaseAlign.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/InputSERDES.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/ChannelBond.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/ResyncToBUFG.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/TMDS_Decoder.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/TMDS_Clocking.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/src/dvi2rgb.vhd" \
"../../../../../BD/ip/drone_dvi2rgb_0_0/sim/drone_dvi2rgb_0_0.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_processing_system7_0_0/sim/drone_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_xlconcat_0_0/work/xlconcat.vhd" \
"../../../../../BD/ip/drone_xlconcat_0_0/sim/drone_xlconcat_0_0.vhd" \
"../../../../../BD/ip/drone_xlconstant_0_0/work/xlconstant.vhd" \
"../../../../../BD/ip/drone_xlconstant_0_0/sim/drone_xlconstant_0_0.vhd" \
"../../../../../BD/ip/drone_xlconstant_1_0/sim/drone_xlconstant_1_0.vhd" \
"../../../../../BD/ip/drone_RC_1_0/src/PWM_measure.vhd" \
"../../../../../BD/ip/drone_RC_1_0/hdl/RC_v1_0_S00_AXI.vhd" \
"../../../../../BD/ip/drone_RC_1_0/hdl/RC_v1_0.vhd" \
"../../../../../BD/ip/drone_RC_1_0/sim/drone_RC_1_0.vhd" \
"../../../../../BD/ip/drone_RC_0_0/sim/drone_RC_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_lite_ipif_v3_0_4/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_lite_ipif_v3_0_4/hdl/src/vhdl/pselect_f.vhd" \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_lite_ipif_v3_0_4/hdl/src/vhdl/address_decoder.vhd" \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_lite_ipif_v3_0_4/hdl/src/vhdl/slave_attachment.vhd" \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_lite_ipif_v3_0_4/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/lib_cdc_v1_0_2/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/interrupt_control_v3_1_4/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_11 -93 \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_gpio_v2_0_11/hdl/src/vhdl/gpio_core.vhd" \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/axi_gpio_v2_0_11/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_axi_gpio_testpins_0/sim/drone_axi_gpio_testpins_0.vhd" \
"../../../../../BD/ip/drone_axi_gpio_led_0/sim/drone_axi_gpio_led_0.vhd" \
"../../../../../BD/ip/drone_axi_gpio_video_0/sim/drone_axi_gpio_video_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_pkg_v1_0_2/hdl/src/vhdl/lib_pkg.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_axi_vdma_0_0/fifo_generator_v13_1_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_axi_vdma_0_0/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_5 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_fifo_v1_0_5/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_fifo_v1_0_5/hdl/src/vhdl/sync_fifo_fg.vhd" \

vlog -work blk_mem_gen_v8_3_3 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_axi_vdma_0_0/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_5 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_bmg_v1_0_5/hdl/src/vhdl/blk_mem_gen_wrapper.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/lib_srl_fifo_v1_0_2/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_datamover_v5_1_11 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_reset.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_afifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_sfifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_fifo.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_cmd_status.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_scc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_strb_gen2.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_pcc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_addr_cntl.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_rdmux.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_rddata_cntl.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_rd_status_cntl.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_wr_demux.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_wrdata_cntl.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_wr_status_cntl.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_skid2mm_buf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_skid_buf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_rd_sf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_wr_sf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_stbs_set.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_stbs_set_nodre.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_ibttcc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_indet_btt.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_dre_mux2_1_x_n.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_dre_mux4_1_x_n.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_dre_mux8_1_x_n.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_mm2s_dre.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_dre.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_ms_strb_set.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_mssai_skid_buf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_slice.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_scatter.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_realign.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_basic_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_omit_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_s2mm_full_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_mm2s_basic_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_mm2s_omit_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover_mm2s_full_wrap.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_datamover_v5_1_11/hdl/src/vhdl/axi_datamover.vhd" \

vlog -work axi_vdma_v6_2_8 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_axis2vector.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_vector2axis.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axisc_register_slice.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axis_register_slice.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_upsizer.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_downsizer.v" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axis_dwidth_converter.v" \

vcom -work axi_vdma_v6_2_8 -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_sg.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_pkg.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_cdc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vid_cdc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sg_cdc.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_reset.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_rst_module.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_lite_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_register.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_regdirect.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_reg_mux.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_reg_module.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_reg_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_intrpt.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sof_gen.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_skid_buf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sfifo.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sfifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_afifo_builtin.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_afifo.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_afifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_mm2s_linebuf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_s2mm_linebuf.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_blkmem.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_fsync_gen.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vregister.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vregister_64.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sgregister.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vaddrreg_mux.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vaddrreg_mux_64.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vidreg_module.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_vidreg_module_64.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_genlock_mux.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_greycoder.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_genlock_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sg_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sm.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_sts_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_mngr.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_mngr_64.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_mm2s_axis_dwidth_converter.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma_s2mm_axis_dwidth_converter.vhd" \
"../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/vhdl/axi_vdma.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_axi_vdma_0_0/sim/drone_axi_vdma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../../../BD/ip/drone_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/upcnt_n.vhd" \
"../../../../../BD/ip/drone_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/sequence_psr.vhd" \
"../../../../../BD/ip/drone_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/lpf.vhd" \
"../../../../../BD/ip/drone_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_proc_sys_reset_0_0/sim/drone_proc_sys_reset_0_0.vhd" \
"../../../../../BD/ip/drone_rst_processing_system7_0_100M_0/sim/drone_rst_processing_system7_0_100M_0.vhd" \
"../../../../../BD/ip/drone_rst_processing_system7_0_150M_0/sim/drone_rst_processing_system7_0_150M_0.vhd" \

vcom -work fifo_generator_v13_0_3 -93 \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/fifo_generator_v13_0_3/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/fifo_generator_v13_0_3/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_3 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/v_vid_in_axi4s_v4_0_3/hdl/verilog/v_vid_in_axi4s_v4_0_coupler.v" \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/v_vid_in_axi4s_v4_0_3/hdl/verilog/v_vid_in_axi4s_v4_0_formatter.v" \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/v_vid_in_axi4s_v4_0_3/hdl/verilog/v_vid_in_axi4s_v4_0.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_v_vid_in_axi4s_0_0/sim/drone_v_vid_in_axi4s_0_0.v" \

vcom -work axi_sg_v4_1_3 -93 \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_reset.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_sfifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_fifo.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_cmd_status.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_rdmux.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_addr_cntl.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_rddata_cntl.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_rd_status_cntl.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_scc.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_wr_demux.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_scc_wr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_skid2mm_buf.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_wrdata_cntl.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_wr_status_cntl.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_skid_buf.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_mm2s_basic_wrap.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_s2mm_basic_wrap.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_datamover.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_cntrl_strm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_sg_v4_1_3/hdl/src/vhdl/axi_sg.vhd" \

vcom -work axi_dma_v7_1_10 -93 \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_pkg.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_reset.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_rst_module.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_lite_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_register.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_register_s2mm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_reg_module.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_skid_buf.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_afifo_autord.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_sofeof_gen.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_smple_sm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_sg_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_sm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_sts_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_cntrl_strm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_mm2s_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_sg_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_sm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_cmdsts_if.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_sts_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_sts_strm.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_s2mm_mngr.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma_cmd_split.vhd" \
"../../../../../BD/ip/drone_axi_dma_0_0/axi_dma_v7_1_10/hdl/src/vhdl/axi_dma.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_axi_dma_0_0/sim/drone_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_fifo_generator_0_0/sim/drone_fifo_generator_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_rst_processing_system7_0_100M1_0/sim/drone_rst_processing_system7_0_100M1_0.vhd" \
"../../../../../BD/ip/drone_G_0/work/xlslice.vhd" \
"../../../../../BD/ip/drone_G_0/sim/drone_G_0.vhd" \
"../../../../../BD/ip/drone_R_0/sim/drone_R_0.vhd" \
"../../../../../BD/ip/drone_B_0/sim/drone_B_0.vhd" \
"../../../../../BD/ip/drone_xlconcat_1_0/sim/drone_xlconcat_1_0.vhd" \

vcom -work v_tc_v6_1_8 -93 \
"../../../../../BD/ip/drone_v_tc_0_0/v_tc_v6_1_8/hdl/v_tc_v6_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_v_tc_0_0/sim/drone_v_tc_0_0.vhd" \
"../../../../../BD/ip/drone_DVBOutputBuffer_0_0/sim/drone_DVBOutputBuffer_0_0.vhd" \
"../../../../../BD/ip/drone_kill_switch_0_0/kill_switch.vhd" \
"../../../../../BD/ip/drone_kill_switch_0_0/sim/drone_kill_switch_0_0.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_0_0/hdl/PWM_AXI.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_0_0/hdl/PWM_AXI_v1_0_S00_AXI.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_0_0/hdl/PWM_AXI_v1_0.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_0_0/sim/drone_PWM_AXI_triple_0_0.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_3_0/sim/drone_PWM_AXI_triple_3_0.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_4_0/sim/drone_PWM_AXI_triple_4_0.vhd" \
"../../../../../BD/ip/drone_PWM_AXI_triple_5_0/sim/drone_PWM_AXI_triple_5_0.vhd" \
"../../../../../BD/ip/drone_ModemS2Control_0_0/hdl/ModemS2Control_v1_0_S00_AXI.vhd" \
"../../../../../BD/ip/drone_ModemS2Control_0_0/hdl/ModemS2Control_v1_0.vhd" \
"../../../../../BD/ip/drone_ModemS2Control_0_0/sim/drone_ModemS2Control_0_0.vhd" \

vcom -work xbip_utils_v3_0_6 -93 \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/cic_compiler_0_1/xbip_utils_v3_0_6/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_2 -93 \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/cic_compiler_0_1/axi_utils_v2_0_2/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cic_compiler_v4_0_10 -93 \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/cic_compiler_0_1/cic_compiler_v4_0_10/hdl/cic_compiler_v4_0_vh_rfs.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/cic_compiler_0_1/cic_compiler_v4_0_10/hdl/cic_compiler_v4_0.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/cic_compiler_0_1/sim/cic_compiler_0_1.vhd" \

vcom -work fir_compiler_v7_2_6 -93 \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/fir_compiler_0_1/fir_compiler_v7_2_6/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/fir_compiler_0_1/fir_compiler_v7_2_6/hdl/fir_compiler_v7_2.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/ip/fir_compiler_0_1/sim/fir_compiler_0_1.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/functions.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/config.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/sampleType.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/ldpc_blockXOR.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/infer_ramSinglePort.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/infer_ramDualPort.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/scrambler.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/pls.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/ldpc.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/inserter.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/dvbs2_symbol_rom.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/dvb-all.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/crc8_data.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/crc8_bbh.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/cell_mapper_rom.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/byte_splitter.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/bitinterleave_coeff_rom.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/bitinterleave.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/bit2cell.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/bch.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/bbscrambler.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/BBHeader_9_byte.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/symbol_mapper.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/mpeg_sync.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/inputprocessing.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/framer.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/fec.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/tx.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/mpeg_mux.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/imports/src/tx_wrapperZybo.vhd" \
"../../../../../BD/ip/drone_ModemS2Zybo_0_0/sim/drone_ModemS2Zybo_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../../../BD/ip/drone_xbar_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/axi_register_slice_v2_1_9/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../../../BD/ip/drone_xbar_0/axi_register_slice_v2_1_9/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_data_fifo_v2_1_8 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../../../BD/ip/drone_xbar_0/axi_data_fifo_v2_1_8/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../../../BD/ip/drone_xbar_0/axi_crossbar_v2_1_10/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_xbar_0/sim/drone_xbar_0.v" \
"../../../../../BD/ip/drone_xbar_1/sim/drone_xbar_1.v" \
"../../../../../BD/ip/drone_s00_regslice_0/sim/drone_s00_regslice_0.v" \
"../../../../../BD/ip/drone_s01_regslice_0/sim/drone_s01_regslice_0.v" \
"../../../../../BD/ip/drone_m00_data_fifo_0/sim/drone_m00_data_fifo_0.v" \
"../../../../../BD/ip/drone_m00_regslice_0/sim/drone_m00_regslice_0.v" \

vlog -work axi_protocol_converter_v2_1_9 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../../../BD/ip/drone_auto_pc_0/axi_protocol_converter_v2_1_9/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_auto_pc_0/sim/drone_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_8 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_clock_converter_v2_1_8/hdl/verilog/axi_clock_converter_v2_1_axic_sync_clock_converter.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_clock_converter_v2_1_8/hdl/verilog/axi_clock_converter_v2_1_axic_sample_cycle_ratio.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_clock_converter_v2_1_8/hdl/verilog/axi_clock_converter_v2_1_axi_clock_converter.v" \

vlog -work axi_dwidth_converter_v2_1_9 -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_a_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_b_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_r_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_w_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_axi_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_downsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_upsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_a_upsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer_pktfifo.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer_pktfifo.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_axi_upsizer.v" \
"../../../../../BD/ip/drone_auto_us_df_0/axi_dwidth_converter_v2_1_9/hdl/verilog/axi_dwidth_converter_v2_1_top.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_axi_vdma_0_0/axi_vdma_v6_2_8/hdl/src/verilog" "+incdir+../../../../../BD/ip/drone_processing_system7_0_0/processing_system7_bfm_v2_0_5/hdl" "+incdir+../../../../../BD/ip/drone_xbar_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_pc_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_cc_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_auto_us_df_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_m00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s00_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_s01_regslice_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../../BD/ip/drone_xbar_1/axi_infrastructure_v1_1_0/hdl/verilog" \
"../../../../../BD/ip/drone_auto_us_df_0/sim/drone_auto_us_df_0.v" \
"../../../../../BD/ip/drone_auto_us_cc_df_0/sim/drone_auto_us_cc_df_0.v" \
"../../../../../BD/ip/drone_auto_us_0/sim/drone_auto_us_0.v" \
"../../../../../BD/ip/drone_auto_cc_0/sim/drone_auto_cc_0.v" \
"../../../../../BD/ip/drone_auto_cc_1/sim/drone_auto_cc_1.v" \
"../../../../../BD/ip/drone_auto_cc_2/sim/drone_auto_cc_2.v" \
"../../../../../BD/ip/drone_auto_pc_1/sim/drone_auto_pc_1.v" \

vcom -work xil_defaultlib -93 \
"../../../../../BD/hdl/drone.vhd" \

vlog -work xil_defaultlib "glbl.v"

