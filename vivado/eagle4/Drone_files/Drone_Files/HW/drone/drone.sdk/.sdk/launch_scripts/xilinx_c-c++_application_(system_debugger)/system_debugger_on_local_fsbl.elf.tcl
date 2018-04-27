connect -url tcp:127.0.0.1:3121
source /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.sdk/drone_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279760177A"} -index 0
loadhw /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.sdk/drone_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Digilent Zybo 210279760177A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279760177A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279760177A"} -index 0
dow /users/students/data/eagle4/Drone_files/Drone_Files/HW/drone/drone.sdk/FSBL/Debug/FSBL.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279760177A"} -index 0
con
