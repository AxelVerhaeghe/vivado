/**********************************************************************
*   Attitude controller source file
*   this script contains functions used to generate inputs to the drone
*   that allow it to track the attitude reference from the RC or from the 
*   navigation controller
*
*   author: p. coppens
***********************************************************************/
#include "attitude.h"


void controller_flying(float thrust, float rot_x, float rot_y, float rot_z) {
	load_input(thrust, rot_x, rot_y, rot_z);
	load_measurements();

	set_imu_measurements_reduced(q,w);

	compute_ctrl_action();
	float *u = get_attitude_control_action();

	/* =================================================
	 Add calculation for v based on the measurements
	 ================================================= */

	control_to_voltage(u[0],u[1],u[2]);
	float *v = get_control_to_voltage();

	CLAMP_INPLACE(v[0], 0, 1);
	CLAMP_INPLACE(v[1], 0, 1);
	CLAMP_INPLACE(v[2], 0, 1);
	CLAMP_INPLACE(v[3], 0, 1);

	 // recalculate the control signals
	float temp_var[4];
	float control_action_clamped[3];
	temp_var[0] = 0.25 * v[0] + 0.25 * v[1] - 0.25 * v[2] - 0.25 * v[3];
	temp_var[1] = 0.25 * v[0] - 0.25 * v[1] + 0.25 * v[2] - 0.25 * v[3];
	temp_var[2] = -0.25 * v[0] + 0.25 * v[1] + 0.25 * v[2] - 0.25 * v[3];
	temp_var[3] = 0.25 * v[0] + 0.25 * v[1] + 0.25 * v[2] + 0.25 * v[3];
	control_action_clamped[0] = temp_var[0]; control_action_clamped[1] = temp_var[1];
	control_action_clamped[2] = temp_var[2]; //c = temp_var[3];

	set_control_action(control_action_clamped);

	state_estimator();

	if (thrust <= 0.01) {
		attitude_controller_init();
	}

	/* assign output */
#ifndef CALIBRATE_MOTORS
    if (thrust <= 0.01) {
#else
    if (1) { /* for calibration => directly apply signals to motors */
#endif
    	PWMOutput(
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*thrust), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*thrust), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*thrust), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*thrust)
	);
    } else {
    	PWMOutput(
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*v[0]), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*v[1]), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*v[2]), 
		(float)(CTR_OUT_LOW + (CTR_OUT_HIGH - CTR_OUT_LOW)*v[3])
	);
    }
}


void controller_init() {
    /**
     *  this method is used to initiate the controller
     *  it does this by loading some initial values into the 
     *  controller's and observer's states
     */
	
    /* =================================================
     * Add reset of observer and controller
     * ================================================= */
	attitude_controller_init();
	imu_measurements_init();
	attitude_reference_init();
}


void controller_idle() {
    /* turn of all engines by dropping the voltage down to 0 */
    PWMOutput(0, 0, 0, 0);
}

void load_measurements() {

	/* get orientation measurement */
	q[0] = ahrs_orient.w; 
	q[1] = ahrs_orient.x; 
	q[2] = ahrs_orient.y; 
	q[3] = ahrs_orient.z;

	/* get gyroscope measurement */
	w[0] = gx; 
	w[1] = gy; 
	w[2] = gz;

	/* get rotor frequency measurement */
	/* n[0] = nx; n[1] = ny; n[2] = nz; */
}


void load_input(float thrust, float rot_x, float rot_y, float rot_z) {

	float d;
	float w;
	float s;
	float rx;
	float ry;

        /* get the constant control value */
//	c = thrust;

	/* get the relative rotation input */
	if (thrust < 0.1)
		rel_yaw = 0.0;
	else if ((rot_z > 0.05) || (rot_z < -0.05))
		rel_yaw += 0.5 * rot_z * 2 * M_PI / TICKS_PS;

	/* transform the reference input into radians */
	rx = rot_x * 45; 
    ry = rot_y * 45;
	CLAMP_INPLACE(rx, -30.0, 30.0); CLAMP_INPLACE(ry, -30.0, 30.0);

	rx = rx * M_PI / 180; ry = ry * M_PI / 180;

	/* build the quaternion */
	d = rx*rx + ry*ry + rel_yaw*rel_yaw;
	w = cos(sqrt(d)/2);
	if(d==0)s=0;
	else s = sin(sqrt(d)/2)/sqrt(d);

	r[0] = w;
	r[1] = rx*s;
	r[2] = ry*s;
	r[3] = rel_yaw*s;

	set_attitude_reference(r);

}

