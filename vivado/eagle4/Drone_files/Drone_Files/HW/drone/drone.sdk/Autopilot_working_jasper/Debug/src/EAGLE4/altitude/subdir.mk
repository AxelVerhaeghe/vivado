################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/EAGLE4/altitude/altitude_controller.c \
../src/EAGLE4/altitude/altitude_integral_action.c \
../src/EAGLE4/altitude/altitude_reference.c 

OBJS += \
./src/EAGLE4/altitude/altitude_controller.o \
./src/EAGLE4/altitude/altitude_integral_action.o \
./src/EAGLE4/altitude/altitude_reference.o 

C_DEPS += \
./src/EAGLE4/altitude/altitude_controller.d \
./src/EAGLE4/altitude/altitude_integral_action.d \
./src/EAGLE4/altitude/altitude_reference.d 


# Each subdirectory must supply rules for building sources it contributes
src/EAGLE4/altitude/%.o: ../src/EAGLE4/altitude/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Autopilot_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


