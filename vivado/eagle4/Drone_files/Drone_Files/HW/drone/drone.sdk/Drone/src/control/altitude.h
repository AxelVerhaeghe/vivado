/**********************************************************************************************************************
*   Altitude controller header file
*   this script contains functions used to generate inputs to the drone
*   that allow it to fly at a constant height
*   author: p. coppens
***********************************************************************************************************************/
#ifndef ALTITUDE_H
#define ALTITUDE_H

#include "../main.h"
#include "../EAGLE4/EAGLE4.h"


// Method headers
// ====================================================================================================================

/**
 * This method is used during flight in order to stabilize the altitude of 
 * the drone based on a reference signal rz
 *
 * @param rz the height reference for the altitude control
 */
void altitude_flying(float rz);

/**
 *  this method is used to initiate the controller
 *  it does this by loading some initial values into the controller's and observer's states
 */
void altitude_init();

/**
 * Read the position measurements from the sonar and apply tilt correction
 */
void correct_tilt_height();

/**
 * Used to pass the calculated thrust to attitude control and PWM
 */
void thrust_out(float thrust);

// Macros
// ====================================================================================================================

/**
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

// Constants
// ====================================================================================================================

#define C_H     0.660783336177
#define N_H     77.0142978314
#define C2NH	116.55

#define RZ_CAP  1.0
#define THRUST_CLIP 0.1

// Global Variables
// ====================================================================================================================
float alt_thrust;
float target_z;
float pz;

// Controller output
float u_c;

#endif // ALTITUDE_H
