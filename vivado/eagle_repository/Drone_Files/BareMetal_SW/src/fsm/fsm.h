/**********************************************************************************************************************
*   EAGLE FSM header file
*   this file contains all definitions for describing the main bare metal behavior.
*   author: w. devries, p. coppens
***********************************************************************************************************************/
#ifndef FSM_H_
#define FSM_H_

// Header Files
// ====================================================================================================================
#include "xscugic.h"
#include "../main.h"

// Constant definitions
// ====================================================================================================================
// --------------------------------------------------------------------------------------------------------------------
// The following constants describe the delays used in the interrupt system
// --------------------------------------------------------------------------------------------------------------------

// Interrupt frequency of the IMU
#define TICKS_PS (238.0)

// Delay for the arming procedure in clock cycles to count (2sec)
#define ARMING_DELAY (TICKS_PS * 2)

// --------------------------------------------------------------------------------------------------------------------
// The following constants describe the states of the drone
// --------------------------------------------------------------------------------------------------------------------
// Values representing the armed state
#define ARMED 1					// The drone is armed and dangerous
#define DISARMED 0				// The drone is not armed and control is not active. No PWM will be output.

// Do we apply tilt rejection
#define TILT_REJECT_OFF 0		// Do not apply tilt rejection
#define TILT_REJECT_ON 1		// Apply tilt rejection

// Flight modes (for debugging)
// These allow turning off the different control actions from within the code.
// This can be useful when debugging a controller as the controllers still run in the background. The control action
// is just never applied.
#define CTR_ATT 0				// Only ever apply attitude control signals
#define CTR_ALT 1				// Apply attitude reference from the RC, but use the thrust calculated by altitude
#define CTR_NAV 2				// Use the thrust from the RC, but the pitch and roll calculated by navigation
#define CTR_FULL 3				// Use pitch, roll and thrust from the controllers

// Nav states
// Describes the current state of the NAV reset
#define NAV_NOT_INIT 0			// nav not yet initiated
#define NAV_WAIT_INIT 1 		// nav init requested by image processing (happens when a first measurement comes in)
#define NAV_INITIATED 2 		// nav initiated with measurement from image processing

// Flight Mode definitions
#define MANUAL 0
#define ALTITUDE 1
#define NAVIGATING 2
#define ERROR 3

// Inductive Mode definitions
#define IND_OFF 0
#define IND_ON 1
#define IND_ERR 2

// RC Mode delay
#define MODE_DELAY 50

// Prototype definitions
// ====================================================================================================================
void 	update();
int 	arming_check(float rt, float rz, int controller_armed);
void 	motor_out();
void 	navigation_out();
void 	led_visual();

// Global variables
// ====================================================================================================================
// Controller states
int armingcounter;
int controller_armed;
int nav_initiated;

// Input signals for the RC
float thrust, rot_x, rot_y, rot_z, rmode, rind, rtune;

// Input signals from PSI
float px_meas, py_meas;

// Time at last interrupt
float frame_time;

// Tilt rejection
int tilt_reject;

// LED state
int LED_CHECK, LEDT, LEDA, LEDN, LEDI;
char led_check;

#endif /* FSM_H_ */
