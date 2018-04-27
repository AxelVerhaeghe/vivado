/**********************************************************************************************************************
*   Sonar source file
*   this file contains all methods used to read input from the sonar
*   author: w. devries, p. coppens
***********************************************************************************************************************/
#include "sonar.h"

int large_jump_count = 0;

/*
 * Update the sonar measurement
 */
void read_sonar() {
	// Read the raw measurement
	float sonar_new = (float) Xil_In32(SONAR_REG) / (CLK_MEASURE * PWM_TO_HEIGHT);

	// Update the median filter
	add_mf_measurement(sonar_new);
	sonar_new = get_median(MF_BUFFER_SIZE_SMALL);

	// Apply the peak filter
    float diff = fabsf(sonar_new - sonar);
	if (large_jump_count < MAX_JUMP_COUNT && diff > MAX_JUMP) {
		large_jump_count += 1;
	} else {
        sonar = sonar_new;
        large_jump_count = 0;
	}
}

/**
 * Get a more accurate median of the last measurements
 */
void read_sonar_accurate() {
	sonar = get_median_full();
}

/**
 * Initialise the median filter of the sonar
 */
void init_sonar() {
	read_sonar();
	init_mf(sonar);
}

