/**********************************************************************************************************************
*   Altitude controller source file
*   this script contains functions used to generate inputs to the drone
*   that allow it to fly at a constant height
*   author: p. coppens
***********************************************************************************************************************/
#include "altitude.h"


void altitude_flying(float rz) 
	correct_tilt_height();
	
	// =================================================
	// Add calculation for u_c based on the measurements
	// =================================================

        // Output the calculated thrust
	thrust_out(u_c);
}



void altitude_init() {
	// From now on, attempt to stay at the height we were at on navigation switch.
	read_sonar_accurate();
	target_z = sonar;
	
	// =================================================
	// Add reset of observer and controller
	// =================================================
}

void correct_tilt_height() {
	if (tilt_reject == TILT_REJECT_ON) {
		float pz_err = sonar;
		pz = pz_err; // implement tilt correction
	} else {
		pz = sonar;
	}
}

void thrust_out(float thrust) {
    CLAMP_INPLACE(thrust, -THRUST_CLIP, THRUST_CLIP);
	alt_thrust = thrust + c_h;	// shifted to actual value
}
