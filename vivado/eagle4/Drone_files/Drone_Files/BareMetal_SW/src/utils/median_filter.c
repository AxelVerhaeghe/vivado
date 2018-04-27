/**********************************************************************************************************************
*   Median filter source code
*   An implementation of a median filter with dynamic resizing for the sonar
*   author: p. coppens
***********************************************************************************************************************/
#include "../utils/median_filter.h"

/**
 * Initialise the buffer by filling it with copies of the same element
 * parameters
 * 		el: the element that we fill the buffer with
 */
void init_mf(float el) {
	int i;
	for (i = 0; i < MAX_MF_LENGTH; i++) {
		measurements[i] = el;
	}
}

/**
 * Add an element to the buffer
 * parameters
 * 		el: the element to add
 */
void add_mf_measurement(float el) {
	// Shift all of the previous measurements (dropping the oldest one)
	int i;
	for (i = 0; i < MAX_MF_LENGTH-1; i++) {
		measurements[i] = measurements[i+1];
	}
	// Add the new measurement
	measurements[MAX_MF_LENGTH-1] = el;
}


/**
 * Replace the most recent element in the buffer with the provided one
 * parameters
		el: the element to add
 */
void update_mf_measurement(float el) {
	// Replace the last measurement with the provided one
	measurements[MAX_MF_LENGTH-1] = el;
}

/**
 * Get the median of all of the values currently stored in the buffer
 */
float get_median_full() {
	return get_median(MAX_MF_LENGTH);
}

/**
 * Get the median of the last buffer_size values currently stored in the buffer
 */
float get_median(int buffer_size) {
	// The amount of elements that we have to sort until we find the median
	int sort_count = ceil((buffer_size+1)/2);

	// Initialise the window and fill it with the last buffer_size elements
	float window[buffer_size];
	int i;
	for (i = 0; i < buffer_size; i++) {
		window[i] = measurements[MAX_MF_LENGTH - 1 - i];
	}

	// Find the ceil((buffer_size+1)/2) smallest elements
	for (i = 0; i < sort_count; i++) {
		// the position in measurements of the minimum elements
		int min = i;
		// we only use the last buffer_size measurements to find the median
		int k;
		for (k = i+1; k < buffer_size; k++) {
			if (window[k] < window[min]) {
				min = k;
            }
		}
		// swap the minimum to the correct location at the start of window
		const float temp = window[i];
		window[i] = window[min];
		window[min] = temp;
	}

	// Return the median
	return window[sort_count-1];
}

