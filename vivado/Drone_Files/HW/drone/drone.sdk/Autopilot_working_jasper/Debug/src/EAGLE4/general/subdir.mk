################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/EAGLE4/general/control_to_voltage.c 

OBJS += \
./src/EAGLE4/general/control_to_voltage.o 

C_DEPS += \
./src/EAGLE4/general/control_to_voltage.d 


# Each subdirectory must supply rules for building sources it contributes
src/EAGLE4/general/%.o: ../src/EAGLE4/general/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Autopilot_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


