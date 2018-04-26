/*
 * eagle_ipc.h
 *
 *  Created on: Sep 30, 2016
 *      Author: rtheunis
 */

#ifndef SRC_PLATFORM_EAGLE_IPC_H_
#define SRC_PLATFORM_EAGLE_IPC_H_

#include "../main.h"

void eagle_setup_ipc(void);
void eagle_setup_clk(void);
void eagle_DCacheFlush(void);
void eagle_SetTlbAttributes(u32 addr, u32 attrib);

#endif /* SRC_PLATFORM_EAGLE_IPC_H_ */
