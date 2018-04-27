/*******************************************************************
*   Navigation controller header file
*   this script contains functions used to generate inputs to the drone
*   that allow it to hover in a certain spot or track a reference provided by PSI.
*   author: p. coppens
********************************************************************/
#ifndef NAVIGATION_H
#define NAVIGATION_H

#include "../main.h"

/* --------- Method prototypes --------- */

/**
 *  This method is used during flight in order to stabilize the 
 *  horizontal translation of the drone based on a reference 
 *  signal rx, ry
 *
 *  @param rx the x coordinate of the target
 *  @param ry the y coordinate of the target
 */
void navigation_flying(float rx, float ry);

/**
 *  this method is used to initiate the controller
 *  it does this by loading some initial values into
 *  the controller's and observer's states
 */
void navigation_init();

/**
 * used to pass the calculated thrust to attitude control and PWM
 *
 * @param rot_x
 * @param rot_y
 */
void rot_reference_out(
	float u_rot_x, 
	float u_rot_y);

/**
 * Apply tilt rejection to the measured position
 */
void correct_tilt_pos();



/* --------- Macros --------- */

/**
 *  CLAMP Method used to clamp the voltages
 * 
 *  @param x the value to clamp
 *  @param lo the lower boundary
 *  @param hi the higher boundary
 */
#define CLAMP_INPLACE(x, lo, hi) { \
	if((x) < ((lo))) \
		(x) = (lo); \
	if((x) > ((hi))) \
		(x) = (hi); \
}



/* --------- Constants --------- */

#define RX_CAP  1.0
#define RY_CAP  1.0



/* ------- Global Variables ------- */

float nav_x;
float nav_y;
float target_x;
float target_y;
float px;
float py;
float u_rot_x; 	/* Controller outputs */
float u_rot_y;

#endif // NAVIGATION_H
