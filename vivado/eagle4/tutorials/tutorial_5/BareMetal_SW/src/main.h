/**********************************************************************************************************************
*   Main header file
*   this file contains most of the imports used in the project
*   author: w. devries
***********************************************************************************************************************/

#ifndef EAGLE_BAREMETAL_H_
#define EAGLE_BAREMETAL_H_

// Header Files
// ====================================================================================================================
#include <stdio.h>
#include <xil_io.h>
#include <sleep.h>
#include "xiicps.h"
#include <xil_printf.h>
#include <xparameters.h>
#include "xuartps.h"
#include "stdlib.h"
#include "xstatus.h"
#include "xtime_l.h"
#include "xil_mmu.h"
#include "xil_cache.h"
#include "xil_cache_l.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xpseudo_asm.h"

// EAGLE Header Files
// ====================================================================================================================

#include "platform/platform.h"
#include "platform/eagle_ipc.h"
#include "comm/iic.h"
#include "PWM/PWM.h"
#include "IMU/IMU.h"
#include "AHRS/ahrs.h"
#include "comm/comm.h"
#include "control/attitude.h"
#include "RC/RC.h"
#include "sonar/sonar.h"
#include "intc/intc.h"
#include "fsm/fsm.h"
#include "control/altitude.h"
#include "control/navigation.h"
#include "utils/input_bias.h"

// Prototype definitions
// ====================================================================================================================
int main(void);

// Global constants
// ====================================================================================================================
XIicPs Iic0;

#endif /* EAGLE_BAREMETAL_H_ */
