#include "../EAGLE4.h"
#include <math.h>

/** Defining static variables */
static real_t attitude_state_estimate[NX];
static real_t attitude_state_estimate_reduced[NX_REDUCED];
static real_t attitude_state_estimate_prev[NX_REDUCED];
static real_t attitude_control_actions[NU];
static real_t relative_attitude[NX_REDUCED];

/**
* Call this before taking off.
*/
void attitude_controller_init(void) {
	/* Initializing the attitude_state_estimate_reduced which we use for our calculations of the new state estimates */
	attitude_state_estimate_reduced[0] = 0.0;
	attitude_state_estimate_reduced[1] = 0.0;
	attitude_state_estimate_reduced[2] = 0.0;
	attitude_state_estimate_reduced[3] = 0.0;
	attitude_state_estimate_reduced[4] = 0.0;
	attitude_state_estimate_reduced[5] = 0.0;
	attitude_state_estimate_reduced[6] = 0.0;
	attitude_state_estimate_reduced[7] = 0.0;
	attitude_state_estimate_reduced[8] = 0.0;
	/* Initializing the attitude_control_actions */
	attitude_control_actions[0] = 0.0;
	attitude_control_actions[1] = 0.0;
	attitude_control_actions[2] = 0.0;
	/* Initializing our attitude_state_estimates which we use to compute our control actions*/
	attitude_state_estimate[0] = 1.0;
	attitude_state_estimate[1] = 0.0;
	attitude_state_estimate[2] = 0.0;
	attitude_state_estimate[3] = 0.0;
	attitude_state_estimate[4] = 0.0;
	attitude_state_estimate[5] = 0.0;
	attitude_state_estimate[6] = 0.0;
	attitude_state_estimate[7] = 0.0;
	attitude_state_estimate[8] = 0.0;
	attitude_state_estimate[9] = 0.0;
}

/**
* Getter for attitude_control_actions
*/
real_t * get_attitude_control_action(void) {
	return attitude_control_actions;
}

/**
* Getter for attitude_state_estimate_reduced
*/
real_t * get_attitude_state_estimate_reduced(void) {
	return attitude_state_estimate_reduced;
}

/**
 * STATE_ESTIMATOR estimates the next state based on the previous state.
 * this function uses the measurements of the IMU and
 * the L matrix previously calculated in MATLAB
 */
void state_estimator(void){
/* here we only use the last 6 values of our inputted imu_measurements so we work with the reduced version */

	real_t * imu_measurements_reduced = get_imu_measurements_reduced();
	/* x_est = Ad*x_est + L*(Cd*x_est - y) + Bd*u */

	 attitude_state_estimate_prev[0] = attitude_state_estimate_reduced[0];
	 attitude_state_estimate_prev[1] = attitude_state_estimate_reduced[1];
	 attitude_state_estimate_prev[2] = attitude_state_estimate_reduced[2];
	 attitude_state_estimate_prev[3] = attitude_state_estimate_reduced[3];
	 attitude_state_estimate_prev[4] = attitude_state_estimate_reduced[4];
	 attitude_state_estimate_prev[5] = attitude_state_estimate_reduced[5];
	 attitude_state_estimate_prev[6] = attitude_state_estimate_reduced[6];
	 attitude_state_estimate_prev[7] = attitude_state_estimate_reduced[7];
	 attitude_state_estimate_prev[8] = attitude_state_estimate_reduced[8];
	/* attitude_state_estimate_reduced <-- (Ad + L*Cd) * attitude_state_estimate_prev */
	attitude_state_estimate_reduced[0] = (9.989497e-01) * attitude_state_estimate_prev[0] + (-2.798788e-04) * attitude_state_estimate_prev[3] + (1.397984e-05) * attitude_state_estimate_prev[6];
	attitude_state_estimate_reduced[1] = (9.989497e-01) * attitude_state_estimate_prev[1] + (-2.695783e-04) * attitude_state_estimate_prev[4] + (1.319862e-05) * attitude_state_estimate_prev[7];
	attitude_state_estimate_reduced[2] = (9.983210e-01) * attitude_state_estimate_prev[2] + (-1.674405e-04) * attitude_state_estimate_prev[5] + (-8.212841e-06) * attitude_state_estimate_prev[8];
	attitude_state_estimate_reduced[3] = (-4.500051e-04) * attitude_state_estimate_prev[0] + (7.245060e-01) * attitude_state_estimate_prev[3] + (1.304781e-02) * attitude_state_estimate_prev[6];
	attitude_state_estimate_reduced[4] = (-4.527181e-04) * attitude_state_estimate_prev[1] + (7.344537e-01) * attitude_state_estimate_prev[4] + (1.231867e-02) * attitude_state_estimate_prev[7];
	attitude_state_estimate_reduced[5] = (-1.127559e-03) * attitude_state_estimate_prev[2] + (7.698489e-01) * attitude_state_estimate_prev[5] + (-7.665294e-03) * attitude_state_estimate_prev[8];
	attitude_state_estimate_reduced[6] = (5.925511e-04) * attitude_state_estimate_prev[0] + (-2.175075e+00) * attitude_state_estimate_prev[3] + (8.868778e-01) * attitude_state_estimate_prev[6];
	attitude_state_estimate_reduced[7] = (5.830821e-04) * attitude_state_estimate_prev[1] + (-2.148486e+00) * attitude_state_estimate_prev[4] + (8.868778e-01) * attitude_state_estimate_prev[7];
	attitude_state_estimate_reduced[8] = (2.498255e-04) * attitude_state_estimate_prev[2] + (-2.959738e+00) * attitude_state_estimate_prev[5] + (8.868778e-01) * attitude_state_estimate_prev[8];
	/* attitude_state_estimate_reduced <-- 1.00 * attitude_state_estimate_reduced - (L) * imu_measurements_reduced */
	attitude_state_estimate_reduced[0] = attitude_state_estimate_reduced[0] - (-1.050342e-03) * imu_measurements_reduced[0] - (-2.380719e-03) * imu_measurements_reduced[3] ;
	attitude_state_estimate_reduced[1] = attitude_state_estimate_reduced[1] - (-1.050345e-03) * imu_measurements_reduced[1] - (-2.370419e-03) * imu_measurements_reduced[4] ;
	attitude_state_estimate_reduced[2] = attitude_state_estimate_reduced[2] - (-1.678986e-03) * imu_measurements_reduced[2] - (-2.268281e-03) * imu_measurements_reduced[5] ;
	attitude_state_estimate_reduced[3] = attitude_state_estimate_reduced[3] - (-4.500051e-04) * imu_measurements_reduced[0] - (-2.754940e-01) * imu_measurements_reduced[3] ;
	attitude_state_estimate_reduced[4] = attitude_state_estimate_reduced[4] - (-4.527181e-04) * imu_measurements_reduced[1] - (-2.655463e-01) * imu_measurements_reduced[4] ;
	attitude_state_estimate_reduced[5] = attitude_state_estimate_reduced[5] - (-1.127559e-03) * imu_measurements_reduced[2] - (-2.301511e-01) * imu_measurements_reduced[5] ;
	attitude_state_estimate_reduced[6] = attitude_state_estimate_reduced[6] - (5.925511e-04) * imu_measurements_reduced[0] - (-2.175075e+00) * imu_measurements_reduced[3] ;
	attitude_state_estimate_reduced[7] = attitude_state_estimate_reduced[7] - (5.830821e-04) * imu_measurements_reduced[1] - (-2.148486e+00) * imu_measurements_reduced[4] ;
	attitude_state_estimate_reduced[8] = attitude_state_estimate_reduced[8] - (2.498255e-04) * imu_measurements_reduced[2] - (-2.959738e+00) * imu_measurements_reduced[5] ;
	/* attitude_state_estimate_reduced <-- 1.00 * attitude_state_estimate_reduced + (Bd) * attitude_control_actions */
	attitude_state_estimate_reduced[0] = attitude_state_estimate_reduced[0] + (6.584711e-05) * attitude_control_actions[0] ;
	attitude_state_estimate_reduced[1] = attitude_state_estimate_reduced[1] + (6.216742e-05) * attitude_control_actions[1] ;
	attitude_state_estimate_reduced[2] = attitude_state_estimate_reduced[2] + (1.053391e-03) * attitude_control_actions[2] ;
	attitude_state_estimate_reduced[3] = attitude_state_estimate_reduced[3] + (9.310577e-02) * attitude_control_actions[0] ;
	attitude_state_estimate_reduced[4] = attitude_state_estimate_reduced[4] + (8.790280e-02) * attitude_control_actions[1] ;
	attitude_state_estimate_reduced[5] = attitude_state_estimate_reduced[5] + (9.849575e-01) * attitude_control_actions[2] ;
	attitude_state_estimate_reduced[6] = attitude_state_estimate_reduced[6] + (1.318439e+01) * attitude_control_actions[0] ;
	attitude_state_estimate_reduced[7] = attitude_state_estimate_reduced[7] + (1.318439e+01) * attitude_control_actions[1] ;
	attitude_state_estimate_reduced[8] = attitude_state_estimate_reduced[8] + (1.318439e+01) * attitude_control_actions[2] ;
}

/**
* This function expands the state_estimates to the full form
*/
void attitude_state_reduced_to_full(void){
	real_t * imu_measurements = get_imu_measurements();
	attitude_state_estimate[0] = copysign(sqrt(1 - attitude_state_estimate_reduced[0] * attitude_state_estimate_reduced[0] - attitude_state_estimate_reduced[1] * attitude_state_estimate_reduced[1] - attitude_state_estimate_reduced[2] * attitude_state_estimate_reduced[2]),imu_measurements[0]);
	attitude_state_estimate[1] = attitude_state_estimate_reduced[0];
	attitude_state_estimate[2] = attitude_state_estimate_reduced[1];
	attitude_state_estimate[3] = attitude_state_estimate_reduced[2];
	attitude_state_estimate[4] = attitude_state_estimate_reduced[3];
	attitude_state_estimate[5] = attitude_state_estimate_reduced[4];
	attitude_state_estimate[6] = attitude_state_estimate_reduced[5];
	attitude_state_estimate[7] = attitude_state_estimate_reduced[6];
	attitude_state_estimate[8] = attitude_state_estimate_reduced[7];
	attitude_state_estimate[9] = attitude_state_estimate_reduced[8];
}

/**
 * COMPUTE_CONTROL_ACTION calculates the output of the controller
 * based on the K matrix calculated in matlab and the estimated state.
 * But first we calculate the relative_attitude
 * The first 3 elements of the array are created by the Hamilton product of the measured quaternion and the conjugate of the estimated quaternion
 * The rest is equal to the attitude_stat_estimate because the reference angular velocity and the reference deviation from the hovering spin of rotation are 0).
 */
void compute_ctrl_action(void){
	real_t * attitude_reference = get_attitude_reference();
	attitude_state_reduced_to_full();
	relative_attitude[0] = attitude_state_estimate[1] * attitude_reference[0] - attitude_reference[1] * attitude_state_estimate[0] + attitude_state_estimate[3] * attitude_reference[2] - attitude_reference[3] * attitude_state_estimate[2] ;
	relative_attitude[1] = attitude_state_estimate[2] * attitude_reference[0] - attitude_reference[1] * attitude_state_estimate[3] - attitude_state_estimate[0] * attitude_reference[2] + attitude_reference[3] * attitude_state_estimate[1] ;
	relative_attitude[2] = attitude_state_estimate[3] * attitude_reference[0] + attitude_reference[1] * attitude_state_estimate[2] - attitude_state_estimate[1] * attitude_reference[2] - attitude_reference[3] * attitude_state_estimate[0] ;
	relative_attitude[3] = attitude_state_estimate[4] ;
	relative_attitude[4] = attitude_state_estimate[5] ;
	relative_attitude[5] = attitude_state_estimate[6] ;
	relative_attitude[6] = attitude_state_estimate[7] ;
	relative_attitude[7] = attitude_state_estimate[8] ;
	relative_attitude[8] = attitude_state_estimate[9] ;
	/* attitude_control_actions <-- (K) * relative_attitude */
	attitude_control_actions[0] = (-6.056396e+00) * relative_attitude[0] + (-5.003111e-01) * relative_attitude[3] + (-7.059808e-02) * relative_attitude[6];
	attitude_control_actions[1] = (-6.067506e+00) * relative_attitude[1] + (-5.092506e-01) * relative_attitude[4] + (-7.046706e-02) * relative_attitude[7];
	attitude_control_actions[2] = (-6.636501e+00) * relative_attitude[2] + (-8.445669e-01) * relative_attitude[5] + (-5.312532e-03) * relative_attitude[8];
	state_estimator();
}