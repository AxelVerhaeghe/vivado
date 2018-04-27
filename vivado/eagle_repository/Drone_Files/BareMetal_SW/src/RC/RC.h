/**********************************************************************************************************************
*   Radio Control header file
*   this file contains all parameters used to read input from the RC
*   author: w. devries, p. coppens
***********************************************************************************************************************/
#ifndef RC_H_
#define RC_H_

// Header Files
// ====================================================================================================================
#include "../main.h"
#include "xparameters.h"

// Constant definitions
// ====================================================================================================================
// The following constants map to the XPAR parameters created in the
// xparameters.h file. They are only defined here such that a user can easily
// change all the needed parameters in one place

// IP-hardware definitions
#define RC_T		(XPAR_RC_0_S00_AXI_BASEADDR) 		// throttle 		PIN T14 (JD1)
#define RC_Y		(XPAR_RC_0_S00_AXI_BASEADDR+0x04) 	// roll  			PIN T15 (JD2)
#define RC_X		(XPAR_RC_0_S00_AXI_BASEADDR+0x08) 	// pitch 			PIN P14 (JD3)
#define RC_Z		(XPAR_RC_0_S00_AXI_BASEADDR+0x0C) 	// yaw   			PIN R14 (JD4)
#define RC_MODE		(XPAR_RC_1_S00_AXI_BASEADDR) 		// flight mode 		PIN U15 (JD6)
#define RC_IND		(XPAR_RC_1_S00_AXI_BASEADDR+0x08) 	// inductive mode	PIN V17 (JD7)
#define RC_TUNE		(XPAR_RC_1_S00_AXI_BASEADDR+0x0C) 	// tuner			PIN V18 (JD8)

// measure clock connected to AXI BUS on FCLK_CLK0
#define CLK_MEASURE XPAR_PS7_UART_1_UART_CLK_FREQ_HZ

// RC input range.
// All RC inputs are clamped between 'LOW' and 'HIGH'.
// 'MIN'/'MAX' are used to filter out invalid pulses and must be slightly smaller/greater than 'LOW'/'HIGH'.
// 'DEAD' indicates loss of signal.
#define RC_lo  0.001109//0.00111
#define RC_hi  0.001890

#define RC_margin  (RC_hi - RC_lo)/40 //0.000026
#define RC_dead 0
#define RC_mid  (RC_lo+RC_hi)/2  // 0.001499

// Prototype definitions
// ====================================================================================================================
void read_RC();
int check_mode();
void read_mode();
int check_ind();
float controller_PWM_deadband1(float PWM);
float controller_PWM_deadband2(float PWM);

// Global variables
// ====================================================================================================================
int mode_delay, mode_delay_ind;

// Macros
// ====================================================================================================================
#define CLAMP_INPLACE_MID(x, lo, hi, mid, margin) { \
    if((x) < ((lo)-margin)) \
        (x) = (mid); \
    if((x) > ((hi)+margin)) \
        (x) = (mid); \
}

#define CLAMP_INPLACE(x, lo, hi) { \
	if((x) < ((lo))) \
		(x) = (lo); \
	if((x) > ((hi))) \
		(x) = (hi); \
}

#endif /* RC_H_ */
