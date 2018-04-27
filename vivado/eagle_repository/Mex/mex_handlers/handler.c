/******************************************************************************
*   Mex Handler
*	handler.c is a mex script that runs the controller c scripts
*
*   matlab will use this c script in order to get response
*   from the controller
*
*   the calling syntax is:
*      state = nav(state, measurements, rc_input)
*
*   author: p. coppens
******************************************************************************/
#include <math.h> // replace by #include ../math.h when running on windows
#include "mex.h"

// Include all of the required control code here
// ============================================================================
#include "../control/attitude.h"
#include "../control/attitude.c"
// #include "../control/altitude.h"
// #include "../control/altitude.c"
// #include "../control/navigation.h"
// #include "../control/navigation.c"
// ============================================================================

#include "../main.h"
#include "../main.c"

// Vector sizes
#define STATE_SIZE 4
#define MEASUREMENT_SIZE 7
#define RC_SIZE 4

// Init state variables
int controller_initiated = 0;
int altitude_initiated = 0;
int navigation_initiated = 0;

void handle(double *state, double *measurement, double *rc_input) {
    
	// Assign all of the measurements to the correct c variables
	// ===============================================================================
    // assign orientation measurement
    ahrs_orient.w = measurement[0]; 
    ahrs_orient.x = measurement[1]; 
    ahrs_orient.y = measurement[2];
    ahrs_orient.z = measurement[3];
    
    // assign velocity measurement
    gx = measurement[4];
    gy = measurement[5];
    gz = measurement[6];
    
    // get the postion measurement
    // px_meas = measurement[7];
    // py_meas = measurement[8];
    
    // get the sonar measurement
    // sonar = measurement[9];
    
    // Initiate bias settings
	// ===============================================================================
	c_h = C_H;
	n_h = N_H;
	bias_rot_x = 0.0;
	bias_rot_y = 0.0;
    
	// Initiate all of the controllers
	// ===============================================================================
    // Initiate the attitude controller in case this didn't happen yet
    if (controller_initiated == 0) {
        controller_init();
        controller_initiated = 1;
    }
    
    // Initiate the altitude controller in case this didn't happen yet
    // if (altitude_initiated == 0) {
    //     altitude_init();
    //     target_z = 1.0;
    //     altitude_initiated = 1;
    // }
    
    // Initiate the altitude controller in case this didn't happen yet
    // if (navigation_initiated == 0) {
    //     rot_x = 0.0; rot_y = 0.0;
    //     navigation_init();
	//	   target_x = px_meas; target_y = py_meas;
    //     navigation_initiated = 1;
    // }
    
	// Run the controllers
	// ===============================================================================
    // run altitude controller
	// -------------------------------------------------------------------------------
    // altitude_flying(target_z);
    
    // run navigation controller
	// -------------------------------------------------------------------------------
    // navigation_flying(target_x, target_x);
    
    // run attitude controller
	// -------------------------------------------------------------------------------
    thrust = rc_input[0]; 	// thrust = alt_thrust;
    rot_x = rc_input[1]; 	// rot_x = nav_x;
    rot_y = rc_input[2]; 	// rot_y = nav_y;
    rot_z = rc_input[3];
    
    controller_flying(thrust, rot_x, rot_y, rot_z);
    
    // return the controller states
	// ===============================================================================
	// You can customize this yourself. These are the values that you wan't to use in
	// your simulation.
	// -------------------------------------------------------------------------------
	// Example:
	// The actuator signals for the motors, these can be applied to the non-linear model
	// of the plant in matlab in order to simulate the plant's response to the controller
    state[0] = v[0]; state[1] = v[1]; state[2] = v[2]; state[3] = v[3];
}

/* 
 * The gateway function
 *
 * parameters:
 *      nlhs: Number of output arguments
 *      plhs: Array of output argument pointers
 *      nrhs: Number of input arguments
 *      prhs: Array of input argument pointers
 */
void mexFunction( int nlhs, mxArray *plhs[],
                  int nrhs, const mxArray *prhs[]) {
    /*  
     *  measurement input matrix
     */
    double *measurement;
    
    /*
     *  rc input
     *  [thrust, rot_x, rot_y, rot_z]
     */
    double *rc_input;
    
    /*
     *  output matrix
     */
    double *outMatrix;
    size_t ncols = STATE_SIZE;

    /* check for proper number of arguments */
    if(nrhs!=2) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:nrhs","Two inputs required.");
    }
    if(nlhs!=1) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:nlhs","One output required.");
    }
    /* make sure the first input argument is double */
    if( !mxIsDouble(prhs[0]) || 
         mxIsComplex(prhs[0]) ||
         mxGetNumberOfElements(prhs[0])!=MEASUREMENT_SIZE ) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:notScalar","Input imu_measurement is of incorrect size.");
    }
    
    /* check that number of rows in second input argument is 1 */
    if(mxGetM(prhs[0])!=1) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:notRowVector","Input imu_measurement must be a row vector.");
    }
    
    /* make sure the second input argument is type double */
    if( !mxIsDouble(prhs[1]) || 
         mxIsComplex(prhs[1]) ||
         mxGetNumberOfElements(prhs[1])!=RC_SIZE ) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:notDouble","Input rc_input is of incorrect size.");
    }
    
    /* check that number of rows in second input argument is 1 */
    if(mxGetM(prhs[1])!=1) {
        mexErrMsgIdAndTxt("MyToolbox:arrayProduct:notRowVector","Input rc_input must be a row vector.");
    }

    /* create a pointer to the real data in the input matrix  */
    measurement = mxGetPr(prhs[0]);

    /* create a pointer to the real data in the input matrix  */
    rc_input = mxGetPr(prhs[1]);

    /* create the output matrix */
    plhs[0] = mxCreateDoubleMatrix(1,(mwSize)ncols,mxREAL);

    /* get a pointer to the real data in the output matrix */
    outMatrix = mxGetPr(plhs[0]);
    
    /* call the computational routine */
    handle(outMatrix, measurement, rc_input);
}
