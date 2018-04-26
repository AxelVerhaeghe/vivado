/**************************************************
*   InterCPU communication header file
*   allows sending log data to python, logging the 
*   flight mode and reading values from PSI
*   author: p. coppens
***************************************************/
#include "comm.h"

/* 
 * Initiate register pointers
 * Log register 
 */
float *log_cpu_0 = (float *)LOG;

/*
 * Lock registers
 */
int *log_req = (int *)LOG_REQ;
int *psi_lock = (int *)PSI_LOCK;


void log_mode() {
	if (*psi_lock == 0) {
		*psi_lock = 1;

		int *nav_mode = (float *)MODE_FLAG;
		int *ind_mode = (float *)IND_FLAG;
		*nav_mode = check_mode();
		*ind_mode = check_ind();

		*psi_lock = 0;
	}
}


void init_comm() {
	/* set nav mode */
	if (*psi_lock == 0) {
		*psi_lock = 1;

		int *nav_mode = (int *)MODE_FLAG;
		int *ind_mode = (int *)IND_FLAG;
		int *land_flag = (int *)LAND_FLAG;
		*nav_mode = ERROR;
		*ind_mode = IND_ERR;
		*land_flag = 0;

		*psi_lock = 0;
	}
}


void log_data() {
	if (*log_req == 1) {
		/* Store flight mode */
		log_cpu_0[0] = (float)check_mode();

		/* Store the time */
		log_cpu_0[1] = frame_time;

		/* Store the tuning parameter */
		log_cpu_0[2] = rtune;
		
		/*
		 * Store more values in the array
		 */

		/* Update flag */
		*log_req = 0;

	}
}


void read_psi() {
	if (*psi_lock == 0) {
		*psi_lock = 1;

		// Read position
		float *px_psi = (float *)POS_X;
		float *py_psi = (float *)POS_Y;

		px_meas = *px_psi;
		py_meas = *py_psi;

		int *landing_flag = (int *)LAND_FLAG;

		// Check if landing command was send
		if (*landing_flag == 1) {
			printf("arrived at target QR code\r\n");
			// TODO handle landing
		} else {
			// Read target
			float *target_x_psi = (float *)TARGET_X;
			float *target_y_psi = (float *)TARGET_Y;

			target_x = *target_x_psi;
			target_y = *target_y_psi;
		}

		// Take care of NAV initiation
		if (nav_initiated == NAV_NOT_INIT) {
			int *nav_state = (int *)INIT_FLAG;
			if (*nav_state == 1) {
				nav_initiated = NAV_WAIT_INIT;
				*nav_state = 0;
			}
		}

		*psi_lock = 0;
	}
}

