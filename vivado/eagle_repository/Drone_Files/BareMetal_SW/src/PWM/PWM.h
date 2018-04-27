/**********************************************************************************************************************
*   PWM control header
*   this file contains all functions required to use the PWM outputs and the buzzer.
*   author: w. devries
***********************************************************************************************************************/
#ifndef PWM_H_
#define PWM_H_

// Header Files
// ====================================================================================================================
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include <stdio.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_assert.h"
#include "xtime_l.h"

#include "../main.h"

// Constant definitions
// ====================================================================================================================
// GPIO addresses
#define GPIO_DEVICE_LED  	(XPAR_AXI_GPIO_LED_DEVICE_ID)		// GPIO device that LEDs are connected to
#define GPIO_DEVICE_TESTPIN (XPAR_AXI_GPIO_TESTPINS_DEVICE_ID)	// GPIO device that the TESTPINs are connected to

#define LED_CHANNEL 		1			// GPIO port for LEDs
#define TESTPIN_CHANNEL 	1			// GPIO port for testpin
#define HEARTBEAT_CHANNEL 	2			// GPIO port for heartbeat

// Clock settings
#define CLK_AXI 			XPAR_PS7_UART_1_UART_CLK_FREQ_HZ
#define XPERIOD				500.0

// LED settings
#define LED 				0x03		// Initial LED value - 00XX
#define LED_DELAY 			10000000	// Software delay length

// PWM settings
#define PWM_OUT_LOW			45.0		// Usual minimal value of PWM (commercial = 45.0)
#define PWM_OUT_HIGH		92.0		// Usual high value of PWM (commercial = 92.0)
#define PWM_OUT_DEAD		0.0			// Dead value for PWM (commercial = 0.0)

// Inductive settings
#define INDUCTIVE_FREQ 90000	// The frequency of the inductive PWM

// Prototype definitions
// ====================================================================================================================
int PWMOutput(float Xhigh_timeFL, float Xhigh_timeFR, float Xhigh_timeBL, float Xhigh_timeBR);
int PWM_init();
int PWMKill();

void beep_armed();
void beep_disarmed();
void beep_initiated();

int inductive();

// Global variables
// ====================================================================================================================
int init_pwm;			// Boolean indicating if PWM is initiating
int heartbeat;			// Current state of heartbeat
volatile int Delay;		// Iterate value for loops

// Instances
XGpio axi_gpio_1;		// GPIO Device driver instance for LED
XGpio axi_gpio_2;		// GPIO Device driver instance for testpin

#endif /* PWM_H_ */
