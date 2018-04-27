/**********************************************************************************************************************
*   Attitude controller header file
*   this script contains functions used to generate inputs to the drone
*   that allow it to track the attitude reference from the RC or from the navigation controller
*   author: p. coppens
***********************************************************************************************************************/
#ifndef ATTITUDE_H
#define ATTITUDE_H

#include "../main.h"

// Constant definitions
// ====================================================================================================================
#define CTR_OUT_LOW 40.0
#define CTR_OUT_HIGH 90.0

// Method headers
// ====================================================================================================================
void controller_flying(float thrust, float rot_x, float rot_y, float rot_z);
void controller_init();
void controller_idle();
void load_measurements();
void load_input(float thrust, float rot_x, float rot_y, float rot_z);

// Macros
// ====================================================================================================================
/**²
 *  CLAMP Method used to clamp the voltages
 *
 *  parameters:
 *  x:      the value to clamp
 *  lo:     the lower boundary
 *  hi:     the higher boundary
 */
#define CLAMP_INPLACE(x, lo, hi) { \
	if((x) < ((lo))) \
		(x) = (lo); \
	if((x) > ((hi))) \
		(x) = (hi); \
}

// Global Variables
// ====================================================================================================================
// Relative yaw
float rel_yaw;

// Reference signal
float r[4];

// Control signals
float u[3];         // system control signal
float v[4];         // voltage control signals
float c;            // thrust constant

// Attitude measurement data
float q[4];			// orientation measurement
float w[3];			// angular velocity measurement
// float n[3]; 		// rotor frequency measurement

// Controller data
float z[3];			// integrator state

float err[9];       // error

// Observer estimate data
float qe[4];		// orientation measurement
float we[3];		// angular velocity measurement
float ne[3]; 		// rotor frequency measurement

#endif // ATTITUDE_H
