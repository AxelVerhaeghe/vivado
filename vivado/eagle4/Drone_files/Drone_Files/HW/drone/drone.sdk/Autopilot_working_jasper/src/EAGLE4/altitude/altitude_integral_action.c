/** get the header files */
#include "../EAGLE4.h"
#include <math.h>

/** Defining static variables */
static real_t integral_action_altitude[1];

/** call this before taking off */
void integral_action_init(void) {
	/* Initializing the integral_action_altitude */
	integral_action_altitude[0] = 0;
}

real_t * get_integral_action_altitude(void) {
	return integral_action_altitude;
}

/** integral action Zk+1= rk - y */
void compute_integral_action_altitude(real_t reference_height, real_t actual_height) {
	integral_action_altitude[0] = reference_height - actual_height;
}
