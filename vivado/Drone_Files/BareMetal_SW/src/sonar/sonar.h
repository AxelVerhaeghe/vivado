/**********************************************************************************************************************
*   Sonar header file
*   this file contains all methods used to read input from the sonar
*   author: w. devries, p. coppens
***********************************************************************************************************************/
#ifndef SONAR_H_
#define SONAR_H_

// Header Files
// ====================================================================================================================
#include "../main.h"
#include "../utils/median_filter.h"

// Constant definitions
// ====================================================================================================================
// Sonar register
#define SONAR_REG		(XPAR_RC_1_S00_AXI_BASEADDR+0x04)

// Conversion factor to meters
#define PWM_TO_HEIGHT	0.005787

// Size of median filter
#define MF_BUFFER_SIZE_SMALL 3

// The peak filter settings
#define MAX_JUMP_COUNT 100
#define MAX_JUMP 0.10


// Prototype definitions
// ====================================================================================================================

// Method headers
void read_sonar();
void init_sonar();
void read_sonar_accurate();

// Global variables
// ====================================================================================================================
// Values
float sonar;

#endif /* SONAR_H_ */
