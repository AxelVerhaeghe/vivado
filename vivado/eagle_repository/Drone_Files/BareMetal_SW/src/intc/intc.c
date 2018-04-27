/******************************************************************
*   Interrupt control source file
*   this file contains all interrupt related methods and variables
*   author: w. devries
*******************************************************************/

#include "intc.h"


int SetupInterruptSystem() {
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	XScuGic_Config *IntcConfig;

	/* does nothing, is still there for compatibility */
	Xil_ExceptionInit();

	/* Find the Zynq itself (INTC_DEVICE_ID == 0, which I assume is the id of the Zynq as it is added first) */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	/* Build the interrupt controller interrupt handler */
	Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				&InterruptController);

	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}


int SetupIICInterruptSystem() {
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	XScuGic_Config *IntcConfig;

	// Find the Zynq itself (INTC_DEVICE_ID == 0, which I assume is the id of the Zynq as it is added first)
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	/*
	 * Connect and enable the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(&InterruptController, IIC_INT_VEC_ID,(Xil_InterruptHandler)XIicPs_MasterInterruptHandler,	(void *)&Iic0);
	if (Status != XST_SUCCESS)
	{
		xil_printf("IIC_interrupt failed to connect\r\n");
		return Status;
	}
	XScuGic_Enable(&InterruptController, IIC_INT_VEC_ID);

	return XST_SUCCESS;
}

int SetupIMUInterruptSystem() {
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	XScuGic_Config *IntcConfig;

    /*
     * Find the Zynq itself (INTC_DEVICE_ID == 0, which I assume 
     * is the id of the Zynq as it is added first)
     */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

    /*
     * Connect and enable fast interrupt for the Gyr data ready interrupt
	 * This interrupt is triggered by an external pin called Int_gyr_cpu0 
     * (or Core0_nIRQ in block diagram) which is JB4 
     */
	Status = XScuGic_Connect(
		&InterruptController, 
		GYR_INT_ID,
		(Xil_InterruptHandler)Int_gyr,
		(void *)&InterruptController);

	if (Status != XST_SUCCESS)
	{
	 	xil_printf("Int_Gyr_data_ready failed to connect\r\n");
		return Status;
	}

	XScuGic_SetPriorityTriggerType(
		&InterruptController, 
		GYR_INT_ID,
		32, 
		0x03);

	XScuGic_Enable(
		&InterruptController,
		GYR_INT_ID);

	return XST_SUCCESS;
}

void Handler(void *CallBackRef, u32 Event) {
	/*
	 * All of the data transfer has been finished.
	 */
	if (0 != (Event & XIICPS_EVENT_COMPLETE_RECV)){
		RecvComplete = TRUE;
	} else if (0 != (Event & XIICPS_EVENT_COMPLETE_SEND)) {
		SendComplete = TRUE;
	} else if (0 == (Event & XIICPS_EVENT_SLAVE_RDY)){
		/*
		 * If it is other interrupt but not slave ready interrupt, it is
		 * an error.
		 * Data was received with an error.
		 */
		TotalErrorCount++;
	}
}


void Int_gyr(void *InstancePtr) {
	/* update the FSM */
	update();
}
