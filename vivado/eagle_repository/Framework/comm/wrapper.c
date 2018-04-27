/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <byteswap.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>
#include <errno.h>
#define PAGE_SIZE ((size_t)getpagesize())
#define PAGE_MASK ((uint64_t)(long)~(PAGE_SIZE - 1))

#define FRAME_PTR_0	(0x430000AC)
#define FRAME_PTR_1	(0x430000B0)
//#define FRAME_PTR_2 (0x430000B4)
#define AMOUNT_FRAMES	2 //define the amount of frame buffers
#define R_OFFSET_THRUST (0x43C80000) //read from HW thrust register
#define	R_OFFSET_X	(0x43C80004) //read from HW rotx register
#define	R_OFFSET_Y	(0x43C80008) //read from HW roty register
#define	R_OFFSET_Z	(0x43C8000C) //read from HW rotz register
#define W_OFFSET_THRUST	(0xFFFF2000) //write thrust to CPU1 (BM) register
#define	W_OFFSET_X	(0xFFFF3000) //write rotx to CPU1 (BM) register
#define	W_OFFSET_Y	(0xFFFF4000) //write roty to CPU1 (BM) register
#define	W_OFFSET_Z	(0xFFFF5000) //write rotz to CPU1 (BM) register
#define OFFSET_NAV	(0xFFFF6000) //register to check if we are in navigation mode or RC mode
#define OFFSET_ALTITUDE (0x43C90004) //read altitude value (no conversion yet)

int wmemf(uint64_t offset, float value);
int wmem(uint64_t offset, uint32_t value);
int rmem(uint64_t offset);
int flight_mode();
int attitude(int arg);
/*int main()
{
    printf("Hello World\n");
	get_frame(3);
    return 0;
}*/


int attitude(int arg)
{
	/*printf("inside attitude\r\n");*/
	switch(arg)
	{
	case 0: 
		return rmem(R_OFFSET_THRUST);
		break;
	case 1: 
		return rmem(R_OFFSET_X);
		break;
	case 2: 
		return rmem(R_OFFSET_Y);
		break;
	case 3: 
		return rmem(R_OFFSET_Z);
		break;
	default: 
		printf("wrong attitude value\r\n");
		return 0;
	}	
}
int flight_mode()
{
	//printf("mode = %d\r\n", rmem(OFFSET_NAV));
	return rmem(OFFSET_NAV);	
}
void output(float throttle, float rotx, float roty, float rotz)
{
	/*printf("values throttle: %x %x \r\n", throttle, (uint32_t)throttle);*/
        wmemf(W_OFFSET_THRUST, throttle);
	wmemf(W_OFFSET_X, rotx);
	wmemf(W_OFFSET_Y, roty);
	wmemf(W_OFFSET_Z, rotz);
}
int curr_z()
{
	return rmem(OFFSET_ALTITUDE);
}

int rmem(uint64_t offset)
{
	int i, fd;
	int value;
	uint64_t  base;
	int dump = 1;
	int cached = 0;
	volatile uint8_t *mm;
	fd = open("/dev/mem", O_RDWR|(!cached ? O_SYNC : 0));
	    if (fd < 0) {
	        fprintf(stderr, "open(/dev/mem) failed (%d)\n", errno);
	        return 1;
	    }
	//offset = OFFSET_THRUST;
	//value = thrust;
	base = offset & PAGE_MASK;
	offset &= ~PAGE_MASK;

	mm = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base);
	if (mm == MAP_FAILED)
	{
		fprintf(stderr, "mmap64(0x%x@0x%lx) failed (%d)\n", PAGE_SIZE, base, errno);

	}
	for(i=0;i<dump;i++)
	{
		value = *(volatile uint32_t *)(mm + offset + i*4);
		//printf("0x%016llx = 0x%08lx\n", (base + offset + i*4), value);
	}

	munmap((void *)mm, PAGE_SIZE);
	close(fd);
	return value;
}
int wmemf(uint64_t offset, float value)
{
	int fd;
	uint64_t  base;

	int cached = 0;
	volatile uint8_t *mm;
	fd = open("/dev/mem", O_RDWR|(!cached ? O_SYNC : 0));
	    if (fd < 0) {
	        fprintf(stderr, "open(/dev/mem) failed (%d)\n", errno);
	        return 1;
	    }
	//offset = OFFSET_THRUST;
	//value = thrust;
	base = offset & PAGE_MASK;
	offset &= ~PAGE_MASK;

    mm = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base);
    if (mm == MAP_FAILED) {
        fprintf(stderr, "mmap64(0x%x@0x%lx) failed (%d)\n",
                PAGE_SIZE, base, errno);
         }

    *(volatile  float *)(mm + offset) = value; //uint32_t
    munmap((void *)mm, PAGE_SIZE);
    close(fd);
    return 1;
}
int wmem(uint64_t offset, uint32_t value)
{
	int fd;
	uint64_t  base;

	int cached = 0;
	volatile uint8_t *mm;
	fd = open("/dev/mem", O_RDWR|(!cached ? O_SYNC : 0));
	    if (fd < 0) {
	        fprintf(stderr, "open(/dev/mem) failed (%d)\n", errno);
	        return 1;
	    }
	//offset = OFFSET_THRUST;
	//value = thrust;
	base = offset & PAGE_MASK;
	offset &= ~PAGE_MASK;

    mm = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base);
    if (mm == MAP_FAILED) {
        fprintf(stderr, "mmap64(0x%x@0x%lx) failed (%d)\n",
                PAGE_SIZE, base, errno);
         }

    *(volatile  uint32_t *)(mm + offset) = value; //uint32_t
    munmap((void *)mm, PAGE_SIZE);
    close(fd);
    return 1;
}
