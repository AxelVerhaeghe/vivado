/******************************************************************************
*   Main script
*   this is used to create all of the variables that the controller code
*	uses. In the normal framework all of these variables have actual functionality
*	for the Mex version however they are all just dummy implementations.
*	author: p. coppens
******************************************************************************/
#ifndef MAIN_H
#define MAIN_H

#define ALTITUDE 1
#define NAVIGATING 2

#define TICKS_PS (238.0)

#define TILT_REJECT_OFF 0
#define TILT_REJECT_ON 1

typedef struct {
    float w, x, y, z;
} Quat32;

Quat32 ahrs_orient;
float gx, gy, gz;

float thrust, rot_x, rot_y, rot_z;

float bias_rot_x, bias_rot_y;
float c_h, n_h;

float px_meas, py_meas;

float sonar;

int tilt_reject;
        
int PWMOutput(float Xhigh_timeFL, float Xhigh_timeFR, float Xhigh_timeBL, float Xhigh_timeBR);

void read_sonar();

void read_sonar_accurate();

void read_coordinates();

int check_mode();

#endif // MAIN_H
