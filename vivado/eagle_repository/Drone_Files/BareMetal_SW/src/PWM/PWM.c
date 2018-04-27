/**********************************************************************************************************************
*   PWM control code
*   this file contains all functions required to use the PWM outputs and the buzzer.
*   author: w. devries
***********************************************************************************************************************/
#include "PWM.h"

// The Local Variables
// ====================================================================================================================
// Registers for PWM
u32 *baseaddr_period0 	= (u32 *)XPAR_PWM_AXI_TRIPLE_0_0;
u32 *baseaddr_period3 	= (u32 *)XPAR_PWM_AXI_TRIPLE_3_0;
u32 *baseaddr_high_fl 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_0_0+0x04);
u32 *baseaddr_high_fr 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_0_0+0x08);
u32 *baseaddr_high_bl 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_0_0+0x0C);
u32 *baseaddr_high_br 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_3_0+0x04);

// Register for ACK
u32 *baseaddr_ack		= (u32 *)0x41220000;

// Register for buzzer
u32 *sounder_period 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_5_0);
u32 *sounder_volume 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_5_0+0x04);

// Register for inductive
u32 *inductive_period 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_4_0);
u32 *inductive_high 	= (u32 *)(XPAR_PWM_AXI_TRIPLE_4_0+0x04);

// The Methods
// ====================================================================================================================

/**
 * Initialise the PWM's and GPIO pins
 */
int PWM_init(void) {
	int Status;
	int led = LED; /* Hold current LED value. Initialize to LED definition */
	heartbeat = 1;
	float Xhigh_time;
	init_pwm = 1;
	xil_printf("PWM init\r\n");

	// Initialise LED's on the GPIO
	Status = XGpio_Initialize(&axi_gpio_1, GPIO_DEVICE_LED);
	if (Status != XST_SUCCESS) {
		xil_printf("GPIO init to the LEDs failed!\r\n");
		return XST_FAILURE;
	}

	// Initialise testpin to measure the interrupt-looplength
	Status = XGpio_Initialize(&axi_gpio_2, GPIO_DEVICE_TESTPIN);
	if (Status != XST_SUCCESS) {
		xil_printf("GPIO init to the testpin failed!\r\n");
		return XST_FAILURE;
	}
	// Set the direction for the LEDs to output.
	XGpio_SetDataDirection(&axi_gpio_1, LED_CHANNEL, 0x00);

	// Set the direction for the heartbeat to output
	XGpio_SetDataDirection(&axi_gpio_1, HEARTBEAT_CHANNEL, 0x00);

	// Set the direction for the testpin to output
	XGpio_SetDataDirection(&axi_gpio_2, TESTPIN_CHANNEL, 0x00);

	// Initialise all of the PWM values to the correct state
	for(Xhigh_time=0;Xhigh_time<=5;Xhigh_time++) {
		// Loop blinking the LED.
		// Write output to the LEDs.
		XGpio_DiscreteWrite(&axi_gpio_1, LED_CHANNEL, led);

		// Set the output of all the motor PWM's
		Status=PWMKill();
		if (Status != XST_SUCCESS) {
			xil_printf("PWM update failed");
			return XST_FAILURE;
		}

		// Flip the LEDs
		led = ~led;

		// Output the heartbeat
		XGpio_DiscreteWrite(&axi_gpio_1, 2, heartbeat);
		heartbeat= ~heartbeat;

		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < LED_DELAY; Delay++);
	}
	// Turn off the LEDS
	XGpio_DiscreteWrite(&axi_gpio_1, LED_CHANNEL, 0x0);

	// Finish initialisation
	xil_printf("PWM init success\r\n");
	init_pwm = 0;
	return XST_SUCCESS;
}

/**
 * Output the provided floats to the PWM
 */
int PWMOutput(float Xhigh_timeFL, float Xhigh_timeFR, float Xhigh_timeBL, float Xhigh_timeBR) {
	float FL, FR, BL, BR;

	// Clamp the outputs
	FL=Xhigh_timeFL;
	FR=Xhigh_timeFR;
	BL=Xhigh_timeBL;
	BR=Xhigh_timeBR;
	if(Xhigh_timeFL>PWM_OUT_HIGH){FL=PWM_OUT_HIGH;}
	if(Xhigh_timeFR>PWM_OUT_HIGH){FR=PWM_OUT_HIGH;}
	if(Xhigh_timeBL>PWM_OUT_HIGH){BL=PWM_OUT_HIGH;}
	if(Xhigh_timeBR>PWM_OUT_HIGH){BR=PWM_OUT_HIGH;}
	if(Xhigh_timeFL<PWM_OUT_LOW){FL=PWM_OUT_LOW;}
	if(Xhigh_timeFR<PWM_OUT_LOW){FR=PWM_OUT_LOW;}
	if(Xhigh_timeBL<PWM_OUT_LOW){BL=PWM_OUT_LOW;}
	if(Xhigh_timeBR<PWM_OUT_LOW){BR=PWM_OUT_LOW;}

	// Different period address, because different GPIO block for motor br
	*baseaddr_period0 = CLK_AXI/(float)XPERIOD; // = Clockfreq / wanted freq
	*baseaddr_period3 = CLK_AXI/(float)XPERIOD; // = Clockfreq / wanted freq

	// Assign the PWM
	*baseaddr_high_fl = (float)FL/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_fr = (float)FR/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_bl = (float)BL/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_br = (float)BR/100.0 * *baseaddr_period3; // % * period

	// Turn off the inductive
	*inductive_period 	= 0.0;
	*inductive_high 	= 0.0;

	return XST_SUCCESS;
}

/**
 * Output the kill PWM
 */
int PWMKill() {
	float FL, FR, BL, BR;

	// Kill all engines
	FL = PWM_OUT_DEAD; FR = PWM_OUT_DEAD; BL = PWM_OUT_DEAD; BR = PWM_OUT_DEAD;

	// Different period address, because different GPIO block for motor br
	*baseaddr_period0 = CLK_AXI/(float)XPERIOD; // = Clockfreq / wanted freq
	*baseaddr_period3 = CLK_AXI/(float)XPERIOD; // = Clockfreq / wanted freq

	// Assign the PWM
	*baseaddr_high_fl = (float)FL/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_fr = (float)FR/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_bl = (float)BL/100.0 * *baseaddr_period0; // % * period
	*baseaddr_high_br = (float)BR/100.0 * *baseaddr_period3; // % * period

	// Turn off the inductive
	*inductive_period 	= 0;
	*inductive_high 	= 0;

	return XST_SUCCESS;
}

/**
 * Beep for indicating the arming of the drone
 */
void beep_armed() {
	*sounder_period=0x37800;
	*sounder_volume=0x20000;
	/* Wait a small amount of time so that the LED blinking is visible. */
	for (Delay = 0; Delay < LED_DELAY; Delay++);
	*sounder_period=0x27800;
	*sounder_volume=0x20000;
	/* Wait a small amount of time so that the LED blinking is visible. */
	for (Delay = 0; Delay < LED_DELAY; Delay++);
	*sounder_period=0x0000;
	*sounder_volume=0x0000;
}

/**
 * Beep for indicating the disarming of the drone
 */
void beep_disarmed() {
	*sounder_period=0x27800;
	*sounder_volume=0x20000;
	/* Wait a small amount of time so that the LED blinking is visible. */
	for (Delay = 0; Delay < LED_DELAY; Delay++);
	*sounder_period=0x37800;
	*sounder_volume=0x20000;
	/* Wait a small amount of time so that the LED blinking is visible. */
	for (Delay = 0; Delay < LED_DELAY; Delay++);
	*sounder_period=0x0000;
	*sounder_volume=0x0000;
}

/**
 * Beep for indicating PWM initialisation
 */
void beep_initiated() {
	xil_printf("PCDCDH Beep!\r\n");
	*sounder_period=0x27800;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 1000000; Delay++)*sounder_volume=0x25000;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 10000; Delay++)*sounder_volume=0x0;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 1000000; Delay++)*sounder_volume=0x25000;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 10000; Delay++)*sounder_volume=0x0;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 1000000; Delay++)*sounder_volume=0x25000;
		/* Wait a small amount of time so that the LED blinking is visible. */
		for (Delay = 0; Delay < 10000; Delay++)*sounder_volume=0x0;
		*sounder_period=0x0000;
		*sounder_volume=0x0000;
}

/**
 * Output PWM for activating inductive
 */
int inductive() {
	//xil_printf("Inductive link enabled!\r\n");
	/*turn of engines*/
	*baseaddr_high_fl = 0;
	*baseaddr_high_fr = 0;
	*baseaddr_high_bl = 0;
	*baseaddr_high_br = 0;
	/*enable inductive output 50% high time*/
	*inductive_period 	= CLK_AXI/INDUCTIVE_FREQ;
	*inductive_high 	= (float)50/100 * *inductive_period;
	return XST_SUCCESS;
}

