#include "ahrs.h"
Vec32 ahrs_av_imu = {0, 0, 0};


void ahrs_init() {
	xil_printf("AHRS_INIT\r\n");

	Quat32 rot, temp;
	ahrs_orient.w = 1;
	ahrs_orient.x = 0;
	ahrs_orient.y = 0;
	ahrs_orient.z = 0;

	/*
	 * use accelerometer values to ensure that the initial quaternion is oriented correctly
	 */
	readAcc();
	Vec32 accel = {ax, ay, az};
	vec32_normalize_32f16(&accel, &accel);

	/*
	 * calculate angle (based on direction of acceleration
	 * theoretically we need arcsin here, but we know that angle is relatively small so the error is acceptable
	 */
	Vec32 angle = {  asin(accel.y),
	                 asin(-accel.x),
	                 0};

	/*
	 * update orientation (initial error is the actual measured orientation after all
	 */
	quat32_from_vector(&rot, &angle);           /* q_IMU = build a quaternion from angle vector */
	quat32_multiply(&temp, &ahrs_orient, &rot); /* q_error = calculate quat error and assign to temp */
	quat32_normalize(&ahrs_orient, &temp);      /* assign normalised temp to IMU */

	/*
	 * AHRS is now initialized
	 */
	ahrs=1;
	xil_printf("AHRS init ok\r\n");
}


void ahrs_tick() {
	Quat32 rot, temp;

    /* reverse-transform vector (0,0,1)
     * ahrs_orient equal to bodyframe, correct placement is important
     * we calculate a quaternion providing the difference with inertial coordinates where z = 1 (and x = 0, y = 0)
     *
     * this provides us with the direction of gravity
     * (current rotation of drone is a good estimate for the direction of the original reference compared
     * to that of the drone itself)
	 */
    up_x = quat32_m31(&ahrs_orient);
    up_y = quat32_m32(&ahrs_orient);
    up_z = quat32_m33(&ahrs_orient);

    /*
     * calculate cross product with gravity
     * Angle (and AHRS_av_imu) provides an angle over which the coordinate 
     * system is rotated around one of it's original axis we get vector with 
     * each arrow indicating how hard we are turning about each axis
     */
    angle_x = ay*up_z - az*up_y;
    angle_y = az*up_x - ax*up_z;
    angle_z = ax*up_y - ay*up_x;

    /* add gyroscope angle
     * angular rate sensitivity = 8.75mdps/LSB
     * gyro = fix24.8, multiplier = fix-6.38, angle = 2.30, 8+38-30 = 16
     * multiplier = pi/(180*8.75*samplerate) * 2^38 sample rate = 952Hz ==> TURN GYROSCOPE VALUES TO RADIANS
     * before calibration = 667482, after calibration = 672793
     * divide drift by 2^13 to match angle time constant (critical damping) -------------------(?)
	 */
    float k1 = 1.0 / (5.0 * TICKS_PS);
    float k2 = 1.0 / TICKS_PS;
    ahrs_av_imu.x = (angle_x*k1 + gx*k2);
    ahrs_av_imu.y = (angle_y*k1 + gy*k2);
    ahrs_av_imu.z = (angle_z*k1 + gz*k2);

    /* -- update orientation -- */
    quat32_from_vector(&rot, &ahrs_av_imu); 		/* assign calculated rotation to quaternion */
    quat32_multiply(&temp, &ahrs_orient, &rot);		/* calculate error with previous estimate */
    quat32_normalize(&ahrs_orient, &temp);			/* error is new orientation */

    return;
}
