/**********************************************************************************************************************
*   Radio Control source file
*   this file contains all methods used to read input from the RC
*   author: w. devries, p. coppens
***********************************************************************************************************************/
#include "RC.h"

/**
 * The last mode that the drone was in at the last interrupt.
 */
int last_rc_mode = ERROR;
int last_rc_ind = IND_ERR;

/**
 * Read the RC voltages from the registers and assign them to the correct instances
 */
void read_RC() {
	// Get all of the rc controls TODO Inigo's code?
	float rt = (float)Xil_In32(RC_T)/CLK_MEASURE;
	float rx = (float)Xil_In32(RC_X)/CLK_MEASURE;
	float ry = (float)Xil_In32(RC_Y)/CLK_MEASURE;
	float rz = (float)Xil_In32(RC_Z)/CLK_MEASURE;

	rmode = (float)Xil_In32(RC_MODE)/CLK_MEASURE;
	rind = (float)Xil_In32(RC_IND)/CLK_MEASURE;
	rtune = (float)Xil_In32(RC_TUNE)/CLK_MEASURE;

	// Assign the inputs to the input RC input range
	CLAMP_INPLACE(rt,RC_lo, RC_hi);
	CLAMP_INPLACE_MID(rx,RC_lo, RC_hi, RC_mid, RC_margin);
	CLAMP_INPLACE_MID(ry,RC_lo, RC_hi, RC_mid, RC_margin);
	CLAMP_INPLACE_MID(rz,RC_lo, RC_hi, RC_mid, RC_margin);
	CLAMP_INPLACE(rmode,RC_lo, RC_hi);
	CLAMP_INPLACE(rind,RC_lo, RC_hi);
	CLAMP_INPLACE(rtune,RC_lo, RC_hi);

	// Rescale tuning input from -0.5 to +0.5
	rtune = (rtune - RC_mid)/(RC_hi - RC_lo);

	// Assign RC values to the rc registers (inverted control scheme)
	thrust  = controller_PWM_deadband1(rt);
	rot_x  = -controller_PWM_deadband2(rx);
	rot_y  = -controller_PWM_deadband2(ry);
	rot_z  = -controller_PWM_deadband2(rz);
}

/**
 * Read the mode from the RC control
 * (used when all of the other values don't have to be read)
 */
void read_mode() {
	rmode= (float)Xil_In32(RC_MODE)/CLK_MEASURE; // time of mode switch
	CLAMP_INPLACE(rmode,RC_lo, RC_hi);
}

/**
 * Check the current flight mode
 */
int check_mode() {
	// Get the current mode from RC
	int new_mode;
	if (rmode <= RC_lo+0.0002)
		new_mode = MANUAL;
	else if ((RC_lo+0.0002 < rmode) && (rmode < RC_mid+0.0002))
		new_mode =  ALTITUDE;
	else if ((RC_mid+0.0002 <= rmode) && (rmode <= RC_hi))
		new_mode =  NAVIGATING;
	else
		new_mode =  ERROR;	// normally never reached

	// Add the delay for a mode switch
	if (new_mode != last_rc_mode) {
		mode_delay += 1;
		if (mode_delay > MODE_DELAY) {
			mode_delay = 0;
			last_rc_mode = new_mode;
			return new_mode;
		}
		return last_rc_mode;
	} else {
		mode_delay = 0;
		return last_rc_mode;
	}
}

/**
 * Check the current inductive mode
 */
int check_ind() {
	int new_mode;
	if (rind <= RC_lo+0.0002)
		new_mode = IND_OFF;
	else if ((RC_hi-0.0002 <= rind) && (rind <= RC_hi))
		new_mode =  IND_ON;
	else
		new_mode =  IND_ERR;	// normally never reached

	// Add the delay for a mode switch
	if (new_mode != last_rc_ind) {
		mode_delay_ind += 1;
		if (mode_delay_ind > MODE_DELAY) {
			mode_delay_ind = 0;
			last_rc_ind = new_mode;
			return new_mode;
		}
		return last_rc_ind;
	} else {
		mode_delay_ind = 0;
		return last_rc_ind;
	}
}

/**
 * Re-scale the PWM from the RC control to fill up the whole range
 */
float controller_PWM_deadband1(float PWM) {
	//printf("thrust, %f\n", PWM);
    if(PWM == RC_dead)
        return 0;
    if(PWM > (RC_lo + RC_margin)) //0.00111+0.00006 = 0.00117
    	{return ((PWM - RC_lo - RC_margin)/(RC_hi - RC_lo - RC_margin));}///2048; //(?)
    return 0;
}

/**
 * Re-scale the PWM from the RC control to fill up the whole range
 */
float controller_PWM_deadband2(float PWM) {
	//printf("deadband2 %f\n", PWM);
    if(PWM == RC_dead)
        return 0;
    if(PWM < RC_mid - RC_margin) // 0.0015-0.00006
        return ((PWM - RC_mid + RC_margin)/ (RC_mid - RC_lo - RC_margin));///2048;
    if(PWM > RC_mid + RC_margin)
        return ((PWM - RC_mid - RC_margin)/ (RC_mid - RC_lo - RC_margin));///2048;
    return 0;
}


