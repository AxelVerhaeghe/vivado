#ifndef AHRS_H
#define AHRS_H

#include "../comm/iic.h"
#include "../intc/intc.h"
#include "../utils/quaternion.h"
#include "xtime_l.h"

/* AHRS = Attitude and heading reference system
 * This module takes IMU readings and tracks the orientation of the quadcopter.
 * There is no magnetometer, so some drift around the Z axis is to be expected.
 */

/* --------- Constants --------- */
// Required number of readings for calibration.
#define AHRS_CAL_READINGS 256

// Maximum tolerated sensor bias (from datasheet).
#define AHRS_BIAS_ACCEL_X 1.8	//15.62 // ==> datasheet 256*0.061 // 64 // 0.250 * 256 (datasheet: 0.150 * 256)
#define AHRS_BIAS_ACCEL_Y 1.8	//15.62 //64 // 0.250 * 256 (datasheet: 0.150 * 256)
#define AHRS_BIAS_ACCEL_Z 1.8	//15.62 //64 // 0.250 * 256 (datasheet: 0.250 * 256)
#define AHRS_BIAS_GYRO_X 4.101 	// datasheet 245 ==> 235 * M_PI/180=4.101
#define AHRS_BIAS_GYRO_Y 4.101 	// 40 * 14.375
#define AHRS_BIAS_GYRO_Z 4.101 	// 40 * 14.375

// Maximum tolerated sensor noise.
#define AHRS_NOISE_ACCEL 0.3 // 1/6e BIAS
#define AHRS_NOISE_GYRO 5




/* --------- Instances --------- */

// Calibration counter.
float ahrs_cal_counter_read;

// Accelerometer/gyroscope calibration.
extern float ahrs_cal_accel_x;
extern float ahrs_cal_accel_y;
extern float ahrs_cal_accel_z;
extern float ahrs_cal_gyro_x;
extern float ahrs_cal_gyro_y;
extern float ahrs_cal_gyro_z;

// Accelerometer/gyroscope offset (i.e. result of last calibration).
extern float ahrs_offset_accel_x;
extern float ahrs_offset_accel_y;
extern float ahrs_offset_accel_z;
extern float ahrs_offset_gyro_x;
extern float ahrs_offset_gyro_y;
extern float ahrs_offset_gyro_z;

// Physical orientation of quadcopter frame relative to IMU.
extern Quat32 ahrs_imu_delta;

// Orientation quaternion (fix2.30).
Quat32 ahrs_orient_imu;
Quat32 ahrs_orient; //extern

// Drift estimation, in rad/tick (fix2.30).
extern Vec32 ahrs_av_drift;

// Angular velocity, in rad/tick (fix2.30).
extern Vec32 ahrs_av_imu;
float angle_x;
float angle_x_old;
float angle_y;
float angle_y_old;
float angle_z;
float angle_z_old;
float up_x;
float up_y;
float up_z;


/* --------- Function prototypes --------- */

/*
 *  ahrs_tick updates the orientation with the current accelerometer and gyroscope readings.
 *  computes quaternions to give attitude and heading reference system
 *  input is previous estimation quaternion and IMU measured quaternion
 * 	output is estimated quaternion
 * 	TIME = �7.5 us or 4900 clock cycles
 */
void ahrs_tick();

/**
 * Initialize the attitude and heading reference system
 * Calculate starting orientation quaternion referenced at inertial axes
 */
void ahrs_init();


#endif // AHRS_H
