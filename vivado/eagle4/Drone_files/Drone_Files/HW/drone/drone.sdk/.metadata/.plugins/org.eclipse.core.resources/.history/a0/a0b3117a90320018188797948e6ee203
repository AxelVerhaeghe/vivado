/**********************************************************************************************************************
*   EAGLE FSM source file
*   this file contains all functions for describing the main bare metal behavior.
*   author: w. devries, p. coppens
***********************************************************************************************************************/


#include "fsm.h"

/**
 * The last mode that the drone was in at the last interrupt.
 */
int last_mode = ERROR;

/**
 * The time of the frame
 */
float frame_time = 0;

/**
 * The control mode (for debugging)
 */
int ctr_mode = CTR_FULL;

/**
 * Do we want to apply tilt rejection
 */
int tilt_reject = TILT_REJECT_OFF;

/**
 * 	Update the EAGLE FSM
 *
 * 	the following functionality is executed every update:
 *	- update heartbeat output pin so that the frequency of the interrupt handling can be debugged
 *	- update the led's
 *	- log the mode
 *	- store current time for logging
 *
 *	we have three states that the fsm needs to go through before starting up
 *	1. calibration of IMU
 *	2. calibration of AHRS
 *	3. main operation
 *
 *	when we are in main operation we have three modes
 *	- MANUAL: 		only attitude control is running
 *	- ALTITUDE:		altitude and attitude are running as well as the localization system on linux
 *	- NAVIGATING: 	altitude, attitude and navigation are running as well as the localization system on linux
 *	we also check if inductive mode is on in main operation. When the inductive switch is turned on, the python
 *	framework shuts down.
 */
void update() {
	// Heartbeat pulse generation ==> if software hangs, no heartbeat so killswitch becomes active
	XGpio_DiscreteWrite(&axi_gpio_1, HEARTBEAT_CHANNEL, 0);
	XGpio_DiscreteWrite(&axi_gpio_1, HEARTBEAT_CHANNEL, 1);

	// Testpin high to probe length of interrupt
	XGpio_DiscreteWrite(&axi_gpio_2, 1, 0x1);

	// If new interrupt is being called before we reach the main led 1 is lit
	led_visual();

	// If the main loop can set this value to 0
	// before the led is printed then the interrupt is processed to slowly
	led_check=1;

	// Update the frame_time
	frame_time = frame_time + (1.0/238.0);

	// Communicate current mode with navigation
	log_mode();

	// Check what startup state we are in
	if(!_autoCalc) {
		// Calibration of IMU
		calibrate_int();
	} else if(!ahrs) {
		// Calibration of AHRS
		ahrs_init();
		// Read the mode to prepare for main operation
		read_mode();
	} else {
		// Main Operation
		switch (check_mode()) {
			case (MANUAL):
				// fly in manual mode, RC transmitter dictates flight-attitude
				// xil_printf("manual mode\r\n");

				// IMU needs to be read to remove interrupt
				readIMU();
				// update rotation estimate
				ahrs_tick();
				// read RC input
				read_RC();
				// read the sonar
				read_sonar();
				// check if armed
				controller_armed = arming_check(thrust, rot_z, controller_armed);
				// calculate and apply PWM (if armed)
				motor_out();
				// Remember that on the last iteration we were in manual mode
				last_mode = MANUAL;
				break;
			case (ALTITUDE):
				// Altitude controller dictates throttle, attitude input is still controller by pilot
				// xil_printf("alt mode\r\n");

				//IMU needs to be read to remove interrupt
				readIMU();
				// update rotation estimate
				ahrs_tick();
				// read RC input
				read_RC();
				// read the sonar
				read_sonar();
				// read the position
				read_psi();
				// calculate altitude control signals
				navigation_out();
				// calculate and apply PWM (if armed)
				motor_out();
				// Remember that on the last iteration we were in altitude mode
				last_mode = ALTITUDE;
				break;
			case (NAVIGATING):
				// Navigation controller dictates flight-attitude
				// xil_printf("nav mode\r\n");

				//IMU needs to be read to remove interrupt
				readIMU();
				// update rotation estimate
				ahrs_tick();
				// read RC input
				read_RC();
				// read the sonar
				read_sonar();
				// read the position
				read_psi();
				// calculate altitude control signals
				navigation_out();
				// calculate and apply PWM (if armed)
				motor_out();
				// Remember that on the last iteration we were in navigating mode
				last_mode = NAVIGATING;
				break;
			case (ERROR):
				// mode channel out of range for some reason
				xil_printf("Error checking mode, switching to manual\r\n ");

				//IMU needs to be read to remove interrupt
				readIMU();
				// update rotation estimate
				ahrs_tick();
				// update rotation estimate
				read_RC();
				// read the sonar
				read_sonar();
				// check if armed
				controller_armed = arming_check(thrust, rot_z, controller_armed);
				// calculate and apply PWM (if armed)
				motor_out();
				// Remember that on the last iteration we were in error mode
				last_mode = ERROR;
				break;
			default:
				break;
		}

		// Check for inductive mode
		if (check_ind() == IND_ON) {
			// xil_printf("inductive \r\n ");
			inductive();
		}
	}
}

/**
 * This function handles checking if the drone is armed or not
 * Arming procedure: 	throttle <= 0.01 and rc_z >= 0.8 for 2 seconds
 * Disarming procedure: throttle <= 0.01 and rc_z <= -1.0 for 2 seconds
 */
int arming_check(float rc_throttle, float rc_z, int armstatus) {
	if(rc_throttle > 0.01) {
		armingcounter = 0;
		return armstatus;  //if throttle is not down, we won't change arming status and we reset armingcounter
	} else {
		if (rc_z >= 0.8) {
			 armingcounter++;
			 if (armingcounter > ARMING_DELAY) {
				 armingcounter = 0;
				 beep_armed();
				 return ARMED;             		//controller armed
			 }
		} else if (rc_z <= -1.0) {
			armingcounter++;
			if (armingcounter > ARMING_DELAY) {
				armingcounter = 0;
				beep_disarmed();
				return DISARMED;              	//controller disarmed
			}
		} else {
			armingcounter = 0;
		}
		return armstatus;
	}
}

/**
 * Execute the correct controller behavior based on current arming state
 *
 * @note 	This function behaves the same for each flying mode.
 * 			the only difference is where the thrust, rot_x, rot_y and rot_z come from
 */
void motor_out() {
	if (controller_armed) {
		// update the bias trackers
		if (check_mode() == MANUAL) {
			add_rot_bias_ref(rot_x, rot_y);
			add_thurst_bias_ref(thrust);
		}

		// run the attitude controller
		controller_flying(thrust, rot_x, rot_y, rot_z);
	}
	else {
		// run the attitude controller in idle mode
		controller_idle();
	}
}

/**
 * Execute the correct navigation behavior based on current arming state
 */
void navigation_out() {
	// Check if we switched to a navigation mode from some other mode than navigation or altitude
	if (last_mode != check_mode()) {
		// Initiate navigation and altitude
		printf("initiating nav\r\n");
		altitude_init();
		navigation_init();

		// initiate nav state
		nav_initiated = NAV_NOT_INIT;
	}

	if (nav_initiated == NAV_WAIT_INIT) {
		// Process the first measurement
		nav_initiated = NAV_INITIATED;
		printf("initiating nav with new position\r\n");
		navigation_init();
		//printf("configuration: pex = %f, pey = %f, vex = %f, vey = %f,\r\n", pex, pey, vex, vey);
	}

	// Check if we are armed
	if (controller_armed) {
		// Execute altitude control
		altitude_flying(target_z);
		if (ctr_mode == CTR_ALT || ctr_mode == CTR_FULL) {
			thrust = alt_thrust;
		}

		// Execute navigation control
		navigation_flying(target_x, target_y);
		if ((ctr_mode == CTR_NAV || ctr_mode == CTR_FULL) && nav_initiated == NAV_INITIATED && check_mode() == NAVIGATING) {
			rot_x = nav_x;
			rot_y = nav_y;
		}
	}
}

/**
 * Controls the behavior of the LEDs
 * 1. on if the code runs too slow and controller does not run at the right frequency.
 * 2. on if we are armed
 * 3. on if we are in nav mode
 * 4. on if we are in inductive mode
 */
void led_visual() {
	// Check if the timing is correct
	if(led_check)LEDT=0x1; else LEDT=0x0;

	// Check if the controller is armed
	if(controller_armed)LEDA=0x2; else LEDA = 0x0;

	// Check if we are in nav mode
	if(check_mode() == NAVIGATING)LEDN=0x4; else LEDN = 0x0;

	// Check if we are in inductive
	if(check_ind() == IND_ON)LEDI=0x8; else LEDI = 0x0;

	LED_CHECK = LEDT + LEDA + LEDN + LEDI;
	XGpio_DiscreteWrite(&axi_gpio_1, LED_CHANNEL, LED_CHECK);
}
