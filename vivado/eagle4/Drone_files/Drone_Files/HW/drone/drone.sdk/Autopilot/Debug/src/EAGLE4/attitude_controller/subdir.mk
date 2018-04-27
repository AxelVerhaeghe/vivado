################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/EAGLE4/attitude_controller/attitude_controller.c \
../src/EAGLE4/attitude_controller/attitude_reference.c \
../src/EAGLE4/attitude_controller/imu_measurements.c 

OBJS += \
./src/EAGLE4/attitude_controller/attitude_controller.o \
./src/EAGLE4/attitude_controller/attitude_reference.o \
./src/EAGLE4/attitude_controller/imu_measurements.o 

C_DEPS += \
./src/EAGLE4/attitude_controller/attitude_controller.d \
./src/EAGLE4/attitude_controller/attitude_reference.d \
./src/EAGLE4/attitude_controller/imu_measurements.d 


# Each subdirectory must supply rules for building sources it contributes
src/EAGLE4/attitude_controller/%.o: ../src/EAGLE4/attitude_controller/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Autopilot_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


