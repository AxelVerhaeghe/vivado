/***************************************************************
*   Input bias tracker header
*   This file contains all parameters used to track the bias on 
*   rot_x, rot_y and thrust inputs
*
*   author: p. coppens
****************************************************************/
#ifndef ROT_BIAS_H_
#define ROT_BIAS_H_

#include "../main.h"

/* --------- Constants --------- */
#define THRUST_BIAS_DELAY 0.01	/* The speed of the exponential average for the thrust */
#define ROT_BIAS_WEIGHT 0.001	/* The speed of the exponential average for rot_x and rot_y */


/* --------- Globals --------- */
float bias_rot_x;
float bias_rot_y;
float c_h;
float n_h;

/* --------- Method prototypes --------- */

/**
 * Reset the input bias tracker
 */
void init_bias();

/**
 * Add a measurement of rot_x, rot_y to the bias.
 * The bias is updated using a moving exponential average
 */
void add_rot_bias_ref(float rot_x, float rot_y);

/**
 * Add a measurement of thrust to the bias.
 * The bias is updated using a moving exponential average
 */
void add_thurst_bias_ref(float thrust);

#endif /* ROT_BIAS_H_ */
