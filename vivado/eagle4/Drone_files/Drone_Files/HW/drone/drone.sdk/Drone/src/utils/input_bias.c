/***************************************************************
*   Input bias tracker source code
*   This file contains all methods used to track the bias on 
*   rot_x, rot_y and thrust inputs
*   author: p. coppens
****************************************************************/
#include "input_bias.h"


void init_bias() {
	c_h = C_H;
	n_h = N_H;
	bias_rot_x = 0.0;
	bias_rot_y = 0.0;
}


void add_rot_bias_ref(float rot_x, float rot_y) {
	bias_rot_x = bias_rot_x + ROT_BIAS_WEIGHT*(rot_x-bias_rot_x);
	bias_rot_y = bias_rot_y + ROT_BIAS_WEIGHT*(rot_y-bias_rot_y);
}


void add_thurst_bias_ref(float thurst) {
    c_h = c_h + THRUST_BIAS_DELAY*(thrust - c_h);
    n_h = c_h * C2NH;
}
