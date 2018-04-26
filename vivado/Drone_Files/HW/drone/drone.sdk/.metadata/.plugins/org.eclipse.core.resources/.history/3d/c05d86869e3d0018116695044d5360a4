#include "../EAGLE4.h"
#include <math.h>

static real_t altitude_reference[3];
void altitude_reference_init(void){
	/* Initializing the reference states */
	altitude_reference[0] = 0.0;
	altitude_reference[1] = 0.0;
	altitude_reference[2] = 0.0;
	altitude_reference[3] = 0.0;
}

/**
* Getter for altitude_reference to access this variable outside of altitude_reference.c
*/
real_t * get_altitude_reference(void) {
	return altitude_reference;
}

void set_altitude_reference(real_t reference_height) {
	altitude_reference[0] = 0.0; 
	altitude_reference[1] = reference_height; 
	altitude_reference[2] = 0.0; 
	altitude_reference[3] = 0.0; 
}
