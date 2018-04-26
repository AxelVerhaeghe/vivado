onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/esat/micas-data/software/xilinx_vivado_2016.2/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib drone_opt

do {wave.do}

view wave
view structure
view signals

do {drone.udo}

run -all

quit -force
