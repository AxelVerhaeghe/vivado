################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/control/altitude.c \
../src/control/attitude.c \
../src/control/navigation.c 

OBJS += \
./src/control/altitude.o \
./src/control/attitude.o \
./src/control/navigation.o 

C_DEPS += \
./src/control/altitude.d \
./src/control/attitude.d \
./src/control/navigation.d 


# Each subdirectory must supply rules for building sources it contributes
src/control/%.o: ../src/control/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Drone_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


