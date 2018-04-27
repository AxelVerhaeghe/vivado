/**********************************************************************************************************************
*   Integrated Integrated Circuit device driver header
*   this file contains all functions required to use the IIC.
*   author: w. devries
***********************************************************************************************************************/
#ifndef __IIC_H_
#define __IIC_H_

// Header Files
// ====================================================================================================================
#include "xparameters.h"
#include "xiicps.h"
#include <stdio.h>
#include "xscugic.h"
#include "xil_exception.h"
#include "stdlib.h"
#include "sleep.h"

#include "../main.h"

/**************************** Constant Definitions ***************************/
#define IIC_SCLK_RATE 100010 /**< I2C Serial Clock frequency in Hertz */

/**************************** Prototype Functions *******************************/

/* Initialization */

/**
 * Initializes the IIC driver by looking up the configuration in the config
 * table and then initializing it. Also sets the IIC serial clock rate.
 */
unsigned char IicConfig(unsigned int DeviceIdPS, XIicPs* iic_ptr);

/* ~~~ internally used functions ~~~ */


/**
 * Function to write to one of the registers from the IMU
 * -> register_addr = register we want to read from
 * -> u8data = data (8 bits) to write
 * -> device = Gyr/Acc if 1, Magnetometer if 0
 */
void IicWriteToReg(u8 register_addr, u8 u8Data, int device);

/**
 * Function to Read from one of the registers from the IMU
 * -> recv_buffer = pointer to buffer where info is saved
 * -> register_addr = register we want to read from
 * -> device = Gyr/Acc if 1, Magnetometer if 0
 * -> size = amount of bytes to read
 */
void IicReadReg(u8* recv_buffer, u8 register_addr, int device, int size);


#endif /* __IIC_H_ */
