#ifndef EAGLE4_H
#define EAGLE4_H

#ifdef USE_DOUBLE
typedef double real_t;
#else
typedef float real_t;
#endif

#include "../control/altitude.h"
#define NX 10
#define NX_REDUCED 9
#define NU 3
#define NY 6

/*  =====================================================================================
    ATTITUDE CONTROLLER 
    ===================================================================================== */

/* Initializing the controller, this has to run BEFORE TAKEOFF */
void attitude_controller_init(void);
void imu_measurements_init(void);
void attitude_reference_init(void);


/* Getters */
real_t * get_attitude_control_action(void);
real_t * get_attitude_state_estimate_reduced(void);
real_t * get_attitude_reference(void);
real_t * get_imu_measurements(void);
real_t * get_imu_measurements_reduced(void);
real_t * get_control_to_voltage(void);

/* Loading the IMU measurements in imu_measurements */
void set_imu_measurements(real_t * q, real_t * w);
void set_imu_measurements_reduced(real_t * q, real_t * w);

/* Calculating attitude_reference from the values received from the remote controller */
void set_attitude_reference(const real_t * remote_controller_values);
void attitude_state_reduced_to_full(void);


/**
 * The main control function.
 * This function calculates the control actions based on an attitude reference,
 * the measurements from the IMU and the estimated state.
 * After computing the control actions it calculates the estimated state again. 
 */
void compute_ctrl_action(void);

/**
 *   Converts the control action vector (3x1) to the 4 required voltages. [u(3x1) --> v(4x1)]
 *   The common factor (thrust) is calculated by the altitude controller
 */
void control_to_voltage(real_t rot_x,real_t rot_y,real_t rot_z);


/*  =====================================================================================
    ALTITUDE CONTROLLER 
    ===================================================================================== */


/* *** Initiate the altitude controller BEFORE TAKEOFF *** */

/* The sonar will be initiated to 0, 
    this is a good first approximation when the drone is on the ground */
void sonar_measurements_init(void);
/* The references are set to 0 */
void altitude_reference_init(void);


/* *** Initiate the altitude controller IN FLIGHT *** */

/**
  * Initiate the altitude controller
  * Set the states to (n_t,z,v_z) = (0,reference_height,0)
  * and the output u_t is also set to 0
  * reference_height is the sonar measurement on the moment when we switch to altitude hold mode
*/
void altitude_controller_init(real_t reference_height);
/* Initiate the integral action to 0 */
void integral_action_init();

 


/* Getters */
real_t * get_altitude_reference(void);
real_t * get_integral_action_altitude(void);
real_t * get_altitude_control_action(void);
real_t * get_altitude_state_estimate(void);
real_t * get_sonar_measurements(void);
real_t * get_altitude_proportion_action(void);

/* Set the altitude_reference to the desired [0;reference_height;0;0] */
void set_altitude_reference(real_t reference_height);

/**
 * The main control function.
 * This function calculates the control actions based on an altitude reference,
 * the measurements from the sonar and the estimated state.
 */
void compute_control_action_altitude(real_t sonar_measurements);

/* Update the state estimates */
void state_estimator_altitude(real_t sonar_measurements);

/* Calculate the integral action, this is used in the calculation of the control signal */
void compute_integral_action_altitude(real_t reference_height, real_t actual_height);

#endif
