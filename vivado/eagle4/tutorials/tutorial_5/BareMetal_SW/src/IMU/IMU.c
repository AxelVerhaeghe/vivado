/**********************************************************************************************************************
*   IMU device driver source
*   this file contains all functions required to use the IMU.
*   author: w. devries
***********************************************************************************************************************/
#include "IMU.h"

float magSensitivity[4] = {0.00014, 0.00029, 0.00043, 0.00058};

/* Hold current LED value. Initialize to LED definition */
int led = LED;

/* Initialization of IMU:
 * 1 - Check WHO AM I if TRUE IMU attached and communication working
 * 2 - Initialize all registers to expected values
 * 3 - Set BIAS values at 0
 */
int initIMU() {
	// Check both WHO_AM_I to see if the IMU is connected
	// ----------------------------------------------------------------------
	xil_printf("init IMU started \r\n");
	u8 sensor_data[1] = {0x00}; //ACCEL_GYRO_READ_SIZE
	IicReadReg(sensor_data, WHO_AM_I_XG,1,1);
	usleep(100);

	xil_printf("received: 0x%02x\r\n", *sensor_data );
	u8 sensor_data2[1] = {0x00}; //ACCEL_GYRO_READ_SIZE
	IicReadReg(sensor_data2, WHO_AM_I_M,0,1);
	xil_printf("received: 0x%02x\r\n", *sensor_data2 );
	if((*sensor_data != WHO_AM_I_AG_RSP)| (*sensor_data2 != WHO_AM_I_M_RSP)) {
		xil_printf("WHO_AM_I FAILED\r\n");
		return XST_FAILURE;
	}
	else xil_printf("WHO_AM_I CORRECT\r\n");


	// Initialize IMU biases to make sure that we are on flat ground
	// ----------------------------------------------------------------------
	accBiasRaw[0] = -160;	//229; 	// values calculated and printed in calibrate function
	accBiasRaw[1] = -45;	//316;	// we use them to make sure we are basing the inertia axes on flat ground
	accBiasRaw[2] = 15952;	//-268;

	// Initialize IMU registers and variables (see more details in data sheet of LSM9DS1)
	// ----------------------------------------------------------------------
	/* GYROSCOPE + ACCELEROMETER registers and how to initialize them
	 * CTRL_REG1_G 	= 11000000 0xC0 	==> 238 Hz ODR, 245dps scale, BW cutoff 76Hz
	 * CTRL_REG3_G 	= 00000000 0x00 	==> no low power, no HPF, HPF CF = 15Hz
	 * ORIENT_CFG_G = 000000000 0x00 	==> pitch (x), roll(y), yaw (z) angular sign positive, orientation 0
	 * CTRL_REG4 	= 00111010 0x3A		==> gyr outputs enabled, latched interrupt enabled, 4d not
	 * CTRL_REG5_XL = 11111000 0xF8		==> update every 8 samples, all outputs enabled
	 * CTRL_REG6_XL = 110000xx 0xC0		==> 476Hz, scale +-2000g, BW=408Hz
	 * CTRL_REG7_XL	= 00000000 0x00
	 * INT1_CTRL 	= 00000010 0x02		==> Gyr interrupt enable on INT1 pin, gyr data ready enable (do this at the end)
	*/

	ax = 0; ay = 0; az = 0;
	gx = 0; gy = 0; gz = 0;

	acc_x = 0; acc_y = 0; acc_z = 0;
	gyr_x = 0; gyr_y = 0; gyr_z = 0;

	/*IicWriteToReg(INT_GEN_CFG_XL,0xFF,1);
	IicWriteToReg(INT_GEN_CFG_G,0xFF,1);*/
	//IicWriteToReg(CTRL_REG8, 0x84,1);
	IicWriteToReg(CTRL_REG1_G, 0b10011000, 1);
	IicWriteToReg(CTRL_REG3_G, 0x00, 1);
	IicWriteToReg(ORIENT_CFG_G, 0x00, 1);
	IicWriteToReg(CTRL_REG4, 0x3A, 1);
	IicWriteToReg(CTRL_REG5_XL, 0b00111000, 1);
	IicWriteToReg(CTRL_REG6_XL, 0b10001000, 1); //+-8g
	IicWriteToReg(CTRL_REG7_XL, 0x00, 1);

	IicWriteToReg(FIFO_CTRL, 0xC2, 1);

	//IicWriteToReg(INT_GEN_DUR_G,0x83, 1);
	//IicWriteToReg(INT_GEN_CFG_G,0x80, 1);

	gyr_data[0]=0;
	gyr_data[1]=0;
	gyr_data[2]=0;
	gyr_data[3]=0;
	gyr_data[4]=0;
	gyr_data[5]=0;

	/* MAGNETOMETER registers and how to initialize them
	 * CTRL_REG1_M = 11111100 0x7C	==> no temp comp, XY-axis Ultra high performance mode, 80 Hz, no self test
	 * CTRL_REG4_M = 00001100 0x0C	==> Z-axis Ultra-high performance
	 * CTRL_REG2_M = 00000000 0x00	==> �4 gauss scaling
	 * CTRL_REG3_M = 00000000 0x00	==> continuous-conversion mode
	*/
	scale_m=4;
	IicWriteToReg(CTRL_REG1_M, 0xFC, 0);
	IicWriteToReg(CTRL_REG2_M, 0x00, 0);
	IicWriteToReg(CTRL_REG3_M, 0x00, 0);
	IicWriteToReg(CTRL_REG4_M, 0x0C, 0);

	// TEMPERATURE SENSOR
	// settings.temp.enabled = TRUE;

	// Initialize the biases
	int i;
	for (i=0; i<3; i++) {
		gBias[i] = 0;
		aBias[i] = 0;
		mBias[i] = 0;
		gBiasRaw[i] = 0;
		aBiasRaw[i] = 0;
		mBiasRaw[i] = 0;
		aBiasRawTemp[i] = 0;
		gBiasRawTemp[i]= 0;
	}

	// We do not use the biases, before calibration is finished
	_autoCalc = FALSE;

	// Callibrate the magnetometer
	calcmRes();
	calibrateMag(TRUE);

	// Initialize variables for callibration
	ii=0;	// no samples have been made yet for callibration
	ahrs=0;	// ahrs still needs to be initiated (see gyro interrupt)

	// We don't know what the current state of the FIFO in the IMU is, so clear it (we do this by reading them out)
	for(i=0;i<5;i++) {
		readAcc();
		readGyro();
	}

	beep_initiated();
	xil_printf("IMU initiated\r\n");

	// Give output
	xil_printf("starting interrupts\r\n");
	// enable Gyr interrupt
	IicWriteToReg(INT1_CTRL, 0x01, 1);
	// enable IMU interrupt handling
	SetupIMUInterruptSystem();
	return 0;
}

/*
 * Start of IMU:
 * 1 - Check if new data available
 * 2 - if so read corresponding registers
 * 3 - if Autocalc enabled compute bias TRUEed values
 *
 * TIME = �3772 us or 2452000 clock cycles
 */
int readIMU() {
	/* GYROSCOPE*/
		readGyro();

	/*ACCELEROMETER*/
		readAcc();

	/*MAGNETOMETER*/
	//	readMag();

	/*Calculate AHRS */
	//calcAttitude(ax, ay, az, mag_x, mag_y, mag_z);//acc_x, acc_y, acc_z, mag_x, mag_y, mag_z);
	return XST_SUCCESS;
}

/**
 * returns rad/s / (ADC tick)
 */
void readGyro() {
	IicReadReg(gyr_data,OUT_X_L_G,1,6);

	gyr_x = (gyr_data[1]<<8)+gyr_data[0];
	gyr_y = (gyr_data[3]<<8)+gyr_data[2];
	gyr_z = (gyr_data[5]<<8)+gyr_data[4];

	if (_autoCalc==TRUE) {
		gx = calcGyro(-((float) gyr_x - gBiasRaw[0]));
		gy = calcGyro(+((float) gyr_y - gBiasRaw[1]));
		gz = calcGyro(-((float) gyr_z - gBiasRaw[2]));
	}
	usleep(100); //sleep necessary otherwise timing corrupt of calculation...
}

/**
 * returns g's / (ADC tick)
 */
void readAcc() {
	IicReadReg(acc_data,OUT_X_L_XL,1,6);

	acc_x = (acc_data[1]<<8)+acc_data[0];
	acc_y = (acc_data[3]<<8)+acc_data[2];
	acc_z = (acc_data[5]<<8)+acc_data[4];

	if (_autoCalc==TRUE) {
		ax = -calcAccel((float) acc_x - aBiasRaw[0]);
		ay = +calcAccel((float) acc_y - aBiasRaw[1]);
		az = -calcAccel((float) acc_z - aBiasRaw[2]);
		az = az + 1.0;
	}

	//usleep(100);//sleep necessary otherwise timing corrupt of calculation...
}

/**
 * Returns magnetic field
 */
void readMag() {
	IicReadReg(mag_data,OUT_X_L_M,0,6);
	mag_x = (mag_data[1]<<8)+mag_data[0];
	mag_y = (mag_data[3]<<8)+mag_data[2];
	mag_z = (mag_data[5]<<8)+mag_data[4];
}

/**
 * Calculate the attitude based on the provided accelerometer and magnetic data
 */
void calcAttitude(float ax, float ay, float az, float mx, float my, float mz) {
  float roll = atan2(ay, az);
  float pitch = atan2(ax, sqrt(ay * ay + az * az));

  /*float heading;
  if (my == 0)
    heading = (mx < 0) ? 180.0 : 0;
  else
    heading = atan2(mx, my);

  heading = heading - DECLINATION * M_PI / 180;

  if (heading > M_PI) heading = heading - (2 * M_PI);
  else if (heading < -M_PI) heading += (2 * M_PI);
  else if (heading < 0) heading += 2 * M_PI;

  // Convert everything from radians to degrees:
  heading = heading * 180.0 / M_PI;*/
  pitch = pitch * 180.0 / M_PI;
  roll  = roll * 180.0 / M_PI;
}

/**
 * Execute a step in the calibration of the IMU
 * In total samples steps are executed.
 */
void calibrate_int() {
	// Amount of samples taking to calculate bias
	int samples = 512;
	
	// Amount of samples to remove at the start of calibration
	int invalid_count = 16;

	// Log start of calibration
	if (ii == 0) {
		xil_printf("calibrating IMU, reading %i samples \r\n", samples);
	}

	// Loop blinking the LED.
	// Write output to the LEDs.
	XGpio_DiscreteWrite(&axi_gpio_1, LED_CHANNEL, led);
	// alter LEDs.
	if(led<15) { led++; } else { led=0; }

	// Read the gyro data stored in the FIFO
	readGyro();
	
	// first reads contain invalid parameters: G:before [ 26624,    192,      0]  A: before [  -180,   -143,  15816]
	if(ii >= invalid_count) {
		gBiasRawTemp[0] += gyr_x;
		gBiasRawTemp[1] += gyr_y;
		gBiasRawTemp[2] += gyr_z; // GYR_Z mostly negative so easier to subtract
	}

	// Read the accellerometer data stored in the FIFO
	readAcc();
	
	// first reads contain invalid parameters
	if(ii >= invalid_count) {
		aBiasRawTemp[0] += acc_x;
		aBiasRawTemp[1] += acc_y;
		aBiasRawTemp[2] += acc_z;// - (int16_t)(1./aRes); // Assumes sensor facing up!
	}
	
	// an extra sample has been added
	ii++;
	
	// got all of the required samples
	if(ii == samples + invalid_count - 1) {
		for (ii = 0; ii < 3; ii++) {
			gBiasRaw[ii] = (gBiasRawTemp[ii]) / (samples);
			gBias[ii] = calcGyro(gBiasRaw[ii]);

			aBiasRaw[ii] = (aBiasRawTemp[ii]) / (samples);
			aBias[ii] = calcAccel(aBiasRaw[ii]);
		}
		_autoCalc = TRUE;

		// Turn off all of the LED's
		XGpio_DiscreteWrite(&axi_gpio_1, LED_CHANNEL, 0x0);

		xil_printf("calibrated IMU \r\n");
	} else {
		_autoCalc = FALSE;
	}
}

/**
 * Calibrate the Magnetometer
 */
void calibrateMag(char loadIn) {
	int i, j;
	readMag();
	int16_t magMin[3] = {mag_x, mag_y, mag_z}; //{0,0,0}
	int16_t magMax[3] = {mag_x, mag_y, mag_z}; // The road warrior

	for (i=0; i<128; i++)
	{
		while (MagDataAvailable()!=0x08);
		readMag();
		int16_t magTemp[3];// = {0, 0, 0};
		magTemp[0] = mag_x;
		magTemp[1] = mag_y;
		magTemp[2] = mag_z;
		for (j = 0; j < 3; j++)
		{
			if (magTemp[j] > magMax[j]) magMax[j] = magTemp[j];
			if (magTemp[j] < magMin[j]) magMin[j] = magTemp[j];
		}
	}
	for (j = 0; j < 3; j++)
	{
		mBiasRaw[j] = (magMax[j] + magMin[j]) / 2;
		//xil_printf("mBiasRaw = (%d+%d)/2 =  %d \n", magMax[j] ,magMin[j],mBiasRaw[j]);
		mBias[j] = calcMag(mBiasRaw[j]);
		if (loadIn)
			{magOffset(j, mBias[j]);}//mBiasRaw
		//xil_printf("biasing mag\n");}
	}
}

/**
 * Store the magnetic offset in the IMU registers
 */
void magOffset(uint8_t axis, int16_t offset) {
	if (axis > 2)
		return;
	uint8_t msb, lsb;
	msb = (offset & 0xFF00) >> 8;
	lsb = offset & 0x00FF;
	IicWriteToReg(OFFSET_X_REG_L_M+ (2 * axis), lsb, 0);
	IicWriteToReg(OFFSET_X_REG_H_M+ (2 * axis), msb, 0);
}

/**
 * Calculate the correct rad/ps for the provided IMU measurement
 */
float calcGyro(int gyro) {
	// Return the gyro raw reading times our pre-calculated radPS / (ADC tick):
	return (float) (0.070*M_PI/180.0) * (float) gyro;//70mDPS/LSB
}

/**
 * Calculate the correct g's for the provided IMU measurement
 */
float calcAccel(int accel) {
	// Return the accel raw reading times our pre-calculated g's / (ADC tick):
	return 0.000732 * accel; //0.732 mg/LSB
}

/**
 * Calculate the correct tesla's for the provided IMU measurement
 */
float calcMag(int mag) {
	// Return the mag raw reading times our pre-calculated Gs / (ADC tick):
	//printf("mRes = %f \n",mRes );
	return mRes * mag;
}

/**
 * Get the magnetic sensitivity
 */
void calcmRes() {
	mRes = magSensitivity[0];
}

/**
 * Is the accelerometer data available
 */
int AccDataAvailable() {
	IicReadReg(temp, STATUS_REG_0, 1,1);
	return temp[0] & 0x01;
}

/**
 * Is the Gyroscope data available
 */
int GyrDataAvailable() {
	IicReadReg(temp, STATUS_REG_0, 1,1);
	return (temp[0] & 0x02);
}

/**
 * Is the temperature data available
 */
int TempDataAvailable() {
	IicReadReg(temp, STATUS_REG_0, 1,1);
	return temp[0] & 0x04;
}

/**
 * Is the magnetometer data available
 */
int MagDataAvailable() {
	IicReadReg(temp, STATUS_REG_M, 0,1);
	return temp[0] & 0x08;
}

