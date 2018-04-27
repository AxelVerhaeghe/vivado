/***********************************************************************
*   Navigation controller source file
*   this script contains functions used to generate inputs to the drone
*   that allow it to hover in a certain spot or track a reference provided 
*   by PSI.
*
*   author: p. coppens
************************************************************************/
#include "navigation.h"


void navigation_flying(float rx, float ry) {
	correct_tilt_pos();
	
	/* ==============================================================
	 * Add calculation for u_rot_x, u_rot_y based on the measurements
	 * ============================================================== */


    /* Output the calculated thrust */
	rot_reference_out(u_rot_x, u_rot_y);
}

void navigation_init() {
	correct_tilt_pos();
	
	/* ==============================================================
	 * Add reset of observer and controller
	 * ============================================================== */
}


void correct_tilt_pos() {
	if (tilt_reject == TILT_REJECT_ON) {
		/* Apply tilt rejection */
		float pz_err = sonar;
		px = px_meas; /* implement tilt correction */
		py = py_meas; /* implement tilt correction */
	} else {
		px = px_meas;
		py = py_meas;
	}
}

void rot_reference_out(float u_rot_x, float u_rot_y) {
	/*
	 * Variables `bias_rot_x` and `bias_rot_y` are defined
     * in /BareMetal/src/utils/input_bias.h and updated in 
     * /BareMetal/src/utils/input_bias.c 
	 */
    nav_x = u_rot_x * 180.0 / M_PI; 
	nav_y = u_rot_y * 180.0 / M_PI;
	CLAMP_INPLACE(nav_x, -10.0, 10.0); 
	nav_x = bias_rot_x + nav_x / 45.0;
	CLAMP_INPLACE(nav_y, -10.0, 10.0); 
	nav_y = bias_rot_y + nav_y / 45.0;
}

