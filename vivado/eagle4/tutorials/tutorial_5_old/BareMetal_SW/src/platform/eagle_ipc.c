/*
 * eagle_ipc.c
 *
 *  Created on: Sep 30, 2016
 *      Author: rtheunis
 */

#include "eagle_ipc.h"

extern u32 MMUTable;

void eagle_setup_ipc(void){
	eagle_SetTlbAttributes(0xFFFF0000, 0x04de2);
}

void eagle_setup_clk(void) {
	uint32_t* amba_clock_control = (uint32_t*)0xF800012C;

	*amba_clock_control |= (1<<23); //Enable QSPI

	*amba_clock_control |= (1<<22); //Enable GPIO

	*amba_clock_control |= (1<<18); //Enable I2C0

	*amba_clock_control |= (1<<19); //Enable I2C1
}

void eagle_DCacheFlush(void) {
	Xil_L1DCacheFlush();
	//Xil_L2CacheFlush();
}

void eagle_SetTlbAttributes(u32 addr, u32 attrib) {
	u32 *ptr;
	u32 section;

	mtcp(XREG_CP15_INVAL_UTLB_UNLOCKED, 0);
	dsb();

	mtcp(XREG_CP15_INVAL_BRANCH_ARRAY, 0);
	dsb();
	eagle_DCacheFlush();

	section = addr / 0x100000;
	ptr = &MMUTable + section;
	*ptr = (addr & 0xFFF00000) | attrib;
	dsb();
}

