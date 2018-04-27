/**************************************************
*   InterCPU communication header file
*   allows sending log data to python, logging the 
*   flight mode and reading values from PSI
*   author: p. coppens
***************************************************/
#ifndef COMM_H_
#define COMM_H_

/* -------------- Dependencies -------------- */
#include "../main.h"

/* -------------- Constants -------------- */

/* Registers in shared memory (OCM)
 * All of these should be in the range 0xFFFF0000, 0xFFFFFFFF
 */

// locks
#define PSI_LOCK	0xFFFF1000 /* nav lock (set to 1 when writing to NAV_ registers and to 0 when data is available) */
#define LOG_REQ 	0xFFFF1004 /* the log request flag (set to 1 to request log data) */

/* navigation flags */
#define MODE_FLAG	0xFFFF2000 /* the mode flag */
#define INIT_FLAG	0xFFFF2004 /* the navigation init flag (turned on when the first psi data has been written) */
#define IND_FLAG	0xFFFF2008 /* the inductive mode flag */
#define LAND_FLAG	0xFFFF200C /* the landing command flag */

/* psi coordinates */
#define POS_X		0xFFFF2010 // x-coordinate measurement
#define POS_Y		0xFFFF2014 // y-coordinate measurement

/* psi target */
#define TARGET_X	0xFFFF2020 /* x-target position */
#define TARGET_Y	0xFFFF2024 /* y-target position */

/* logging data */
#define LOG			0xFFFF3000 /* start of the log address spaces */

/* -------------- Function prototypes -------------- */

/**
 * Send the current mode to the navigation controller
 */
void log_mode();

/**
 * Initiate the data in the OCM
 */
void init_comm();

/**
 * Send all relevant data to CPU0 so that it can save it to a file
 */
void log_data();

/**
 * Read all of the PSI data
 */
void read_psi();

/* -------------- Globals -------------- */
float *log_cpu_0;
int *log_req;
int *psi_lock;

#endif /* COMM_H_ */
