#include "../EAGLE4.h"
#include <math.h>

static real_t attitude_reference[NX_REDUCED];
void attitude_reference_init(void){
	/* Initializing the reference states */
	/* these include the 9 reference state references and the 3 input reference values */
	attitude_reference[0] = 1.0;
	attitude_reference[1] = 0.0;
	attitude_reference[2] = 0.0;
	attitude_reference[3] = 0.0;
	attitude_reference[4] = 0.0;
	attitude_reference[5] = 0.0;
	attitude_reference[6] = 0.0;
	attitude_reference[7] = 0.0;
	attitude_reference[8] = 0.0;
	attitude_reference[9] = 0.0;
	attitude_reference[10] = 0.0;
	attitude_reference[11] = 0.0;
}

/**
* Getter for attitude_reference to access this variable outside of EAGLE4.c
*/
real_t * get_attitude_reference(void) {
	return attitude_reference;
}

void set_attitude_reference(const real_t * remote_controller_values) {
	/* attitude_reference <-- (G) * remote_controller_values */
	attitude_reference[0] = (1) * remote_controller_values[0];
	attitude_reference[1] = (1) * remote_controller_values[1];
	attitude_reference[2] = (1) * remote_controller_values[2];
	attitude_reference[3] = (9.999956e-01) * remote_controller_values[3];
	attitude_reference[4] = (9.999956e-01) * remote_controller_values[4];
	attitude_reference[5] = (9.999956e-01) * remote_controller_values[5];
	attitude_reference[6] = (-1.593733e-04) * remote_controller_values[3];
	attitude_reference[7] = (-1.688064e-04) * remote_controller_values[4];
	attitude_reference[8] = (-2.808543e-03) * remote_controller_values[5];
	attitude_reference[9] = (-1.367038e-06) * remote_controller_values[3];
	attitude_reference[10] = (-1.447995e-06) * remote_controller_values[4];
	attitude_reference[11] = (-2.409755e-05) * remote_controller_values[5];
}
