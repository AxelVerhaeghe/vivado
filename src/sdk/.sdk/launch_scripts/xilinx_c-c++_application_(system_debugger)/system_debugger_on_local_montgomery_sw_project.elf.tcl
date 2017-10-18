connect -url tcp:127.0.0.1:3121
source /users/start2015/r0486429/Documents/DDP/exsession1/ddp_sw/src/sdk/montgomery_sw_project_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279655166A"} -index 0
loadhw /users/start2015/r0486429/Documents/DDP/exsession1/ddp_sw/src/sdk/montgomery_sw_project_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279655166A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279655166A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279655166A"} -index 0
dow /users/start2015/r0486429/Documents/DDP/exsession1/ddp_sw/src/sdk/montgomery_sw_project/Debug/montgomery_sw_project.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279655166A"} -index 0
con
