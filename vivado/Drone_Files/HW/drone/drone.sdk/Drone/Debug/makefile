################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/utils/subdir.mk
-include src/sonar/subdir.mk
-include src/platform/subdir.mk
-include src/intc/subdir.mk
-include src/fsm/subdir.mk
-include src/control/subdir.mk
-include src/comm/subdir.mk
-include src/RC/subdir.mk
-include src/PWM/subdir.mk
-include src/IMU/subdir.mk
-include src/EAGLE4/c_code/subdir.mk
-include src/EAGLE4/attitude_controller/subdir.mk
-include src/EAGLE4/altitude_controller/subdir.mk
-include src/AHRS/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
Drone.elf.size \


# All Target
all: pre-build main-build

# Main-build Target
main-build: Drone.elf secondary-outputs

# Tool invocations
Drone.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	arm-none-eabi-gcc -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=Xilinx.spec -Wl,-T -Wl,../src/lscript.ld -L../../Drone_bsp/ps7_cortexa9_0/lib -o "Drone.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Drone.elf.size: Drone.elf
	@echo 'Invoking: ARM v7 Print Size'
	arm-none-eabi-size Drone.elf  |tee "Drone.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) Drone.elf
	-@echo ' '

pre-build:
	-a9-linaro-pre-build-step
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
