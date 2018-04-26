

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "Test" "NUM_INSTANCES" "DEVICE_ID"  "C_axi_BASEADDR" "C_axi_HIGHADDR"
}
