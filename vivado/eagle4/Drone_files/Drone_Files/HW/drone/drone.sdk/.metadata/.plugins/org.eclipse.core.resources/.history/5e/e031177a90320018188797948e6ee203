/**********************************************************************************************************************
*   IMU device driver header
*   this file contains all functions required to use the IMU.
*   author: w. devries
***********************************************************************************************************************/
#ifndef IMU_H_
#define IMU_H_

// Header Files
// ====================================================================================================================
#include "xtime_l.h"
#include <math.h>

#include "LSM9DS1_Registers.h"
#include "../main.h"

// Constant definitions
// ====================================================================================================================
// Slave address for the IMU
#define LSM9DS1_GX_ADDR			0x6B
#define LSM9DS1_M_ADDR			0x1E

// FIFO Mode Types
#define	FIFO_OFF   0
#define	FIFO_THS   1
#define	FIFO_CONT_TRIGGER   3
#define	FIFO_OFF_TRIGGER   4
#define	FIFO_CONT  5

// IMU States
#define IMU_OFF		0		// The IMU has not been initialized yet
#define IMU_INIT	1		// The IMU has been initialized
#define IMU_CLEAN	2		// The IMU buffer has been cleared
#define IMU_READY	3		// The IMU is ready for taking measurements

// Earth's magnetic field varies by location. Add or subtract
// a declination to get a more accurate heading. Calculate
// your's here:
// http://www.ngdc.noaa.gov/geomag-web/#declination
#define DECLINATION -0.48 // Declination (degrees) in Brussels.

// Initialization
int initIMU();

// data reading
int readIMU();
void readGyro();
void readAcc();
void readMag();
void readTemp();

// AHRS calculation
void calcAttitude(float ax, float ay, float az, float mx, float my, float mz);

// data availability
int AccDataAvailable();
int GyrDataAvailable();
int TempDataAvailable();
int MagDataAvailable();

// data scaling
void calcgRes();
void calcaRes();
void calcmRes();

// This function reads in a signed 16-bit value and returns the scaled DPS/g's/Gauss
float calcGyro(int gyro);
float calcAccel(int accel);
float calcMag(int mag);

// Internally used methods
void calibrate(char autoCalc);
void calibrate_int();
void magOffset(uint8_t axis, int16_t offset);
void calibrateMag(char loadIn);
void enableFIFO(char enable);
void setFIFO(int fifoMode, uint8_t fifoThs);

// Data Buffers
u8 gyr_data[GYR_ACC_SIZE];
u8 acc_data[GYR_ACC_SIZE];
u8 mag_data[MAG_SIZE];
u8 temp[1];

// RAW 16 bit signed data from readings
int16_t acc_x, acc_y, acc_z;
int16_t gyr_x, gyr_y, gyr_z;
int16_t mag_x, mag_y, mag_z;
float g_smooth_x, g_smooth_y, g_smooth_z;

//Convert from RAW signed 16-bit value to gravity (g's)./Rad per second/Gauss (Gs)
float ax, ay, az, gx, gy, gz, mx, my, mz;

// gRes, aRes, and mRes store the current resolution for each sensor.
// Units of these values would be DPS (or g's or Gs's) per ADC tick.
// This value is calculated as (sensor scale) / (2^15).
float gRes, aRes, mRes;
int scale_a, scale_g, scale_m;
int16_t temperature; // Chip temperature

// Measurement bias
float gBias[3], aBias[3], mBias[3];
float gBiasRaw[3], aBiasRaw[3], mBiasRaw[3], accBiasRaw[3];
int aBiasRawTemp[3],  gBiasRawTemp[3];

// _autoCalc keeps track of whether we're automatically subtracting off
// accelerometer and gyroscope bias calculated in calibrate().
char _autoCalc, _magCalc;

// Initialization counters
int ii, ahrs;


#endif /* IMU_H_ */
