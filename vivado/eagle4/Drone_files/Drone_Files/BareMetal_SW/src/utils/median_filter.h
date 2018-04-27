/**********************************************************************************************************************
*   Median filter header
*   An implementation of a median filter with dynamic resizing for the sonar
*   author: p. coppens
***********************************************************************************************************************/
#ifndef MEDIAN_FILTER_H_
#define MEDIAN_FILTER_H_

#include "../main.h"

// Constants
// =======================================================================================
#define MAX_MF_LENGTH 	15			// The maximum size of the buffer

// Variables
// =======================================================================================
float measurements[MAX_MF_LENGTH];	// The measurements taken by the sonar

// Method headers
// =======================================================================================
/**
 * Initialise the buffer by filling it with copies of the same element
 * parameters
 * 		el: the element that we fill the buffer with
 */
void init_mf(float el);

/**
 * Add an element to the buffer
 * parameters
 * 		el: the element to add
 */
void add_mf_measurement(float el);

/**
 * Replace the most recent element in the buffer with the provided one
 * parameters
		el: the element to add
 */
void update_mf_measurement(float el);

/**
 * Get the median of all of the values currently stored in the buffer
 */
float get_median_full();

/**
 * Get the median of the last buffer_size values currently stored in the buffer
 */
float get_median(int buffer_size);

#endif /* MEDIAN_FILTER_H_ */
