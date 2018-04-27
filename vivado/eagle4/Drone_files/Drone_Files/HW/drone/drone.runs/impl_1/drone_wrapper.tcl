proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.cache/wt [current_project]
  set_property parent.project_path /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.xpr [current_project]
  set_property ip_repo_paths {
  /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.cache/ip
  /users/students/data/eagle4/Drone_files/Drone_Files/HW/TCL/IP_Repo
} [current_project]
  set_property ip_output_repo /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.runs/synth_1/drone_wrapper.dcp
  read_xdc -ref drone_dvi2rgb_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_dvi2rgb_0_0/src/dvi2rgb.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_dvi2rgb_0_0/src/dvi2rgb.xdc]
  read_xdc -ref drone_processing_system7_0_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_processing_system7_0_0/drone_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_processing_system7_0_0/drone_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_axi_gpio_testpins_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_testpins_0/drone_axi_gpio_testpins_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_testpins_0/drone_axi_gpio_testpins_0_board.xdc]
  read_xdc -ref drone_axi_gpio_testpins_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_testpins_0/drone_axi_gpio_testpins_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_testpins_0/drone_axi_gpio_testpins_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_axi_gpio_led_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_led_0/drone_axi_gpio_led_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_led_0/drone_axi_gpio_led_0_board.xdc]
  read_xdc -ref drone_axi_gpio_led_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_led_0/drone_axi_gpio_led_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_led_0/drone_axi_gpio_led_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_axi_gpio_video_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_video_0/drone_axi_gpio_video_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_video_0/drone_axi_gpio_video_0_board.xdc]
  read_xdc -ref drone_axi_gpio_video_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_video_0/drone_axi_gpio_video_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_gpio_video_0/drone_axi_gpio_video_0.xdc]
  read_xdc -ref drone_axi_vdma_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_vdma_0_0/drone_axi_vdma_0_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_vdma_0_0/drone_axi_vdma_0_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_proc_sys_reset_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_proc_sys_reset_0_0/drone_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_proc_sys_reset_0_0/drone_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref drone_proc_sys_reset_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_proc_sys_reset_0_0/drone_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_proc_sys_reset_0_0/drone_proc_sys_reset_0_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_rst_processing_system7_0_100M_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M_0/drone_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M_0/drone_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref drone_rst_processing_system7_0_100M_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M_0/drone_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M_0/drone_rst_processing_system7_0_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_rst_processing_system7_0_150M_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_150M_0/drone_rst_processing_system7_0_150M_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_150M_0/drone_rst_processing_system7_0_150M_0_board.xdc]
  read_xdc -ref drone_rst_processing_system7_0_150M_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_150M_0/drone_rst_processing_system7_0_150M_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_150M_0/drone_rst_processing_system7_0_150M_0.xdc]
  read_xdc -ref drone_axi_dma_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_dma_0_0/drone_axi_dma_0_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_dma_0_0/drone_axi_dma_0_0.xdc]
  read_xdc -ref drone_fifo_generator_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_fifo_generator_0_0/drone_fifo_generator_0_0/drone_fifo_generator_0_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_fifo_generator_0_0/drone_fifo_generator_0_0/drone_fifo_generator_0_0.xdc]
  read_xdc -prop_thru_buffers -ref drone_rst_processing_system7_0_100M1_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M1_0/drone_rst_processing_system7_0_100M1_0_board.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M1_0/drone_rst_processing_system7_0_100M1_0_board.xdc]
  read_xdc -ref drone_rst_processing_system7_0_100M1_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M1_0/drone_rst_processing_system7_0_100M1_0.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_rst_processing_system7_0_100M1_0/drone_rst_processing_system7_0_100M1_0.xdc]
  read_xdc -ref fir_compiler_0_1 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_ModemS2Zybo_0_0/ip/fir_compiler_0_1/fir_compiler_v7_2_6/constraints/fir_compiler_v7_2.xdc
  set_property processing_order EARLY [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_ModemS2Zybo_0_0/ip/fir_compiler_0_1/fir_compiler_v7_2_6/constraints/fir_compiler_v7_2.xdc]
  read_xdc /users/students/data/eagle4/Drone_files/Drone_Files/HW/TCL/constraints/ZYBO_Master.xdc
  read_xdc -ref drone_axi_vdma_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_vdma_0_0/drone_axi_vdma_0_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_vdma_0_0/drone_axi_vdma_0_0_clocks.xdc]
  read_xdc -ref drone_v_vid_in_axi4s_0_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_v_vid_in_axi4s_0_0/drone_v_vid_in_axi4s_0_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_v_vid_in_axi4s_0_0/drone_v_vid_in_axi4s_0_0_clocks.xdc]
  read_xdc -ref drone_axi_dma_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_dma_0_0/drone_axi_dma_0_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_axi_dma_0_0/drone_axi_dma_0_0_clocks.xdc]
  read_xdc -ref drone_fifo_generator_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_fifo_generator_0_0/drone_fifo_generator_0_0/drone_fifo_generator_0_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_fifo_generator_0_0/drone_fifo_generator_0_0/drone_fifo_generator_0_0_clocks.xdc]
  read_xdc -ref drone_v_tc_0_0 -cells U0 /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_v_tc_0_0/drone_v_tc_0_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_v_tc_0_0/drone_v_tc_0_0_clocks.xdc]
  read_xdc -ref drone_auto_us_df_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_df_0/drone_auto_us_df_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_df_0/drone_auto_us_df_0_clocks.xdc]
  read_xdc -ref drone_auto_us_cc_df_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_cc_df_0/drone_auto_us_cc_df_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_cc_df_0/drone_auto_us_cc_df_0_clocks.xdc]
  read_xdc -ref drone_auto_us_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_0/drone_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_us_0/drone_auto_us_0_clocks.xdc]
  read_xdc -ref drone_auto_cc_0 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_0/drone_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_0/drone_auto_cc_0_clocks.xdc]
  read_xdc -ref drone_auto_cc_1 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_1/drone_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_1/drone_auto_cc_1_clocks.xdc]
  read_xdc -ref drone_auto_cc_2 -cells inst /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_2/drone_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files /users/students/data/eagle4/Drone_files/Drone_Files/HW/BD/ip/drone_auto_cc_2/drone_auto_cc_2_clocks.xdc]
  link_design -top drone_wrapper -part xc7z010clg400-1
  write_hwdef -file drone_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive RuntimeOptimized
  write_checkpoint -force drone_wrapper_opt.dcp
  report_drc -file drone_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design -directive ExtraTimingOpt
  write_checkpoint -force drone_wrapper_placed.dcp
  report_io -file drone_wrapper_io_placed.rpt
  report_utilization -file drone_wrapper_utilization_placed.rpt -pb drone_wrapper_utilization_placed.pb
  report_control_sets -verbose -file drone_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

  set_msg_config -source 4 -id {Route 35-39} -severity "critical warning" -new_severity warning
start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive NoTimingRelaxation
  write_checkpoint -force drone_wrapper_routed.dcp
  report_drc -file drone_wrapper_drc_routed.rpt -pb drone_wrapper_drc_routed.pb
  report_timing_summary -max_paths 10 -file drone_wrapper_timing_summary_routed.rpt -rpx drone_wrapper_timing_summary_routed.rpx
  report_power -file drone_wrapper_power_routed.rpt -pb drone_wrapper_power_summary_routed.pb -rpx drone_wrapper_power_routed.rpx
  report_route_status -file drone_wrapper_route_status.rpt -pb drone_wrapper_route_status.pb
  report_clock_utilization -file drone_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step post_route_phys_opt_design
set rc [catch {
  create_msg_db post_route_phys_opt_design.pb
  phys_opt_design -directive AddRetime
  write_checkpoint -force drone_wrapper_postroute_physopt.dcp
  report_timing_summary -warn_on_violation -max_paths 10 -file drone_wrapper_timing_summary_postroute_physopted.rpt -rpx drone_wrapper_timing_summary_postroute_physopted.rpx
  close_msg_db -file post_route_phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed post_route_phys_opt_design
  return -code error $RESULT
} else {
  end_step post_route_phys_opt_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force drone_wrapper.mmi }
  write_bitstream -force drone_wrapper.bit 
  catch { write_sysdef -hwdef drone_wrapper.hwdef -bitfile drone_wrapper.bit -meminfo drone_wrapper.mmi -file drone_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

