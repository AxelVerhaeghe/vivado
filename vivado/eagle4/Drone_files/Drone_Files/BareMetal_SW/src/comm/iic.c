/**********************************************************************************************************************
*   Integrated Integrated Circuit device driver source
*   this file contains all functions required to use the IIC.
*   author: w. devries
***********************************************************************************************************************/
#include "iic.h"


unsigned char IicConfig(unsigned int DeviceIdPS, XIicPs* iic_ptr) {
	XIicPs_Config *Config;
	int Status;
	xil_printf("start IIC communication\r\n");

	/* Initialise the IIC driver so that it's ready to use */

	// Look up the configuration in the config table
	Config = XIicPs_LookupConfig(DeviceIdPS);
	if(NULL == Config) {
		xil_printf("IIC lookup FAILED \r\n");
		return XST_FAILURE;
	}
	//xil_printf("config = %x\r\n",Config);
	// Initialise the IIC driver configuration
	Status = XIicPs_CfgInitialize(iic_ptr, Config, Config->BaseAddress);
	if(Status != XST_SUCCESS) {
		xil_printf("IIC config FAILED \r\n ");
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built TRUEly.
	 */
	Status = XIicPs_SelfTest(iic_ptr);
	if (Status != XST_SUCCESS) {
		xil_printf("IIC selftest FAILED \r\n");
		return XST_FAILURE;
	}

	/*
	* Connect the IIC (iic_ptr) to the interrupt subsystem such that interrupts can
	* occur.  This function is application specific.
	*
	* iic_ptr (does this by accessing iic_ptr's definition as a global variable in main.h r55)
	*/
	Status = SetupIICInterruptSystem();
	if (Status != XST_SUCCESS) {
		xil_printf("setup interrupt system failed /r/n");
		return XST_FAILURE;
	}

	/*
	 * Setup the handlers for the IIC that will be called from the
	 * interrupt context when data has been sent and received, specify a
	 * pointer to the IIC driver instance as the callback reference so
	 * the handlers are able to access the instance data.
	 */
	XIicPs_SetStatusHandler(iic_ptr, (void *) iic_ptr, Handler);

	//Set the IIC serial clock rate.
	Status = XIicPs_SetSClk(&Iic0, 400000); // IIC_SCLK_RATE);
	if (Status != XST_SUCCESS) {
			xil_printf("IIC setClock FAILED \r\n");
			return XST_FAILURE;
	}

	// Print the speed of the IIC
	u32 speed = XIicPs_GetSClk(iic_ptr);
	xil_printf("IIC speed %d\r\n",speed);

	// Finish configuration
	xil_printf("I2c configured\r\n");
	return XST_SUCCESS;
}


void IicWriteToReg(u8 register_addr, u8 u8Data, int device) {
	// Wait for the I2C to end the last operation
	while(XIicPs_BusIsBusy(&Iic0));//xil_printf("waiting for bus (writing task)\n");

	// Get the device address
	u16 device_addr;
	if(device)
		{device_addr = LSM9DS1_GX_ADDR;}
	else
		{device_addr = LSM9DS1_M_ADDR;}

	//Set up the required bits (2 bytes)
	u8 buf[]={register_addr, u8Data};

	// Execute read procedure
	int Status;
	Status = XIicPs_MasterSendPolled(&Iic0, buf, 2, device_addr);
	if(Status != XST_SUCCESS)xil_printf("error in master send polled\n");

	//xil_printf("done writing data 0x%x to: 0x%x \n", u8Data, register_addr);
}


void IicReadReg(u8* recv_buffer, u8 register_addr, int device, int size) {
	//while(XIicPs_BusIsBusy(&Iic0)){xil_printf("waiting for bus (reading task)\n");}
	u16 device_addr;
	if(device)
		{device_addr = LSM9DS1_GX_ADDR;}
	else
		{device_addr = LSM9DS1_M_ADDR;}

	u8 buf[] = {register_addr};
	int Status;
	// Check if within register range
	if(register_addr < 0x05 || register_addr > 0x37){
		xil_printf("ERROR: Cannot register address, 0x%x, out of bounds\r\n", register_addr);
	}
	Status = XIicPs_MasterSendPolled(&Iic0, buf, 1, device_addr);
	if(Status != XST_SUCCESS)xil_printf("Send mislukt %d\r\n", Status);
	Status = XIicPs_MasterRecvPolled(&Iic0, recv_buffer,size,device_addr);
	if(Status != XST_SUCCESS)xil_printf("Receive mislukt %d\r\n", Status);
}



