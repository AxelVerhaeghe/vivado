// UART.H
// STM32F334 NUCLEO 
// Robin Theunis

#ifndef __UART_H
#define __UART_H

#include <stm32f30x.h>
#include <stm32f30x_rcc.h>
#include <stm32f30x_gpio.h>
#include <stm32f30x_usart.h>


void uartInit(unsigned int baud);

#endif
