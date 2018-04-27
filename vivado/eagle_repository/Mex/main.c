/******************************************************************************
*   Main script
*   this is used to create all of the methods that the controller code
*	uses. In the normal framework all of these methods have actual functionality
*	for the Mex version however they are all just dummy implementations.
*	author: p. coppens
******************************************************************************/
#include "main.h"

int tilt_reject = TILT_REJECT_OFF;

int PWMOutput(float Xhigh_timeFL, float Xhigh_timeFR, float Xhigh_timeBL, float Xhigh_timeBR) {
    return 1;
}

void read_sonar() {
    return;
}

void read_sonar_accurate() {
    return;
}

int check_mode() {
    return 0;
}
