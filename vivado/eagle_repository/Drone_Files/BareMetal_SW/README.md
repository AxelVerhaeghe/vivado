# BareMetal Source Code - Overview
The code provided in the src folder contains among others functionality to:

 - Take inputs from the sensors (IMU and Sonar)
 - Process the RC signals
 - Communicate with the Python code running on the other core
 - Provide PWM output to the ESCs

All of these are already connected to the controllers that the navigation module will have to implement. This document will provide an overview of the code that implements all of this.

## Setup
The execution of the code starts in the `main` function in **main.c**. The first step is to setup all of the hardware and reset some registers in memory to the correct values. Some systems that are initialized in this step are:

 - The hardware platform
 - The interrupt system
 - The attitude controller
 - The Inter Processor Communication
 - The PWM (indicated by the LEDs blinking in pairs of two)
 - The IMU

Once all of these steps are finished we are ready to process the interrupts. The inner workings of this system are discussed in the next section.
 
## Interrupt System
The heartbeat behind the whole BareMetal framework is provided by the interrupt system. This is a method that is executed whenever the IMU generates a pulse. The interrupt controller is implemented in **intc/intc.c**. Here we find all of the methods used to initialize the interrupt handling.

There are two components that use the interrupt system. Both are related to the IMU

The first is the Integrated Integrated Circuit (I2C or IIC) provided in **comm/iic.c**. This code implements a protocol used to communicate data with the IMU over a pair of cables. As it takes some time to send all of the data we need a method of detecting when everything is finished. This is provided by the interrupt system, which executes the `Handler` method in `intc.c`.

The second component is the framework itself. As we mentioned earlier the IMU provides a hearbeat that updates the framework's FSM at a frequency of 238Hz. This is implemented by connecting the `Int_gyr` method in `intc.c` to the interrupt controller. Each update corresponds with a new available measurement in the IMU.

## FSM
Whereas the interrupt system is the heartbeat, FSM serves as the rest of the body. It interconnects all other components. FSM does has two stages: calibration of the IMU and flight operation.

When the updates first start coming in, the IMU has not been calibrated yet. The `calibrate_int` function is called until this has been resolved. It drops the first 16 measurements it receives (this corresponds with the first 16 updates). Then it stores the next 512 measurements and eventually takes the average over all of them. We subtract this average from all of the following measurements as it represents a bias. While calibration takes place the LEDs will blink.

When the IMU finishes calibrating you will hear the buzzer on the drone beep. This indicates that we are ready to fly. FSM enters flight operation.

In flight operation we have a few modes that the drone can be in. These are controlled by the mode switch on the RC.

 1. **Manual Mode:** Only the attitude controller can run here and the RC values are directly transferred to it.
 2. **Altitude Mode** All three controllers are running in this mode and image processing on the other CPU is started. However only the control signals from altitude and attitude are actually applied. The navigation controller has no effect on the behavior of the drone, but we can log what it is doing. Which makes debugging easier.
 3. **Navigation Mode** Now all three controllers are running and both altitude and navigation have control over the behavior of the drone. Navigation mode is indicated by the third LED lighting up

We also have the arming state, which controls whether the attitude control is running or not. This is controlled by the `arming_check` methods which contains a counter to check how long the pilot is keeping the throttle stick in the bottom right corner (2 seconds for arming) or in the bottom right corner (2 seconds for disarming). Arming is indicated by a beep from the sounder and the second LED lighting up.

There are two controller output methods. The first is `motor_out` which is called at the end of an update and executes the attitude controller before applying it's output to the motors. The second method is the `navigation_out` method, which executes the altitude and navigation controllers before applying their outputs to the attitude controller if the mode is correct. You will also find the navigation reset behavior in this method. It is a bit more complex than the reset for the other controllers as we have to wait for a measurement coming from image processing. This behavior will be discussed in more detail in the section on inter processor communication.

The state of the inductive switch is also processed in the FSM. When it is on we have to turn on a PWM which communicates to the WPT module that the coil has to be turned on so that power can be transferred.

## Inter Processor Communication
This behavior is implemented in **comm/comm.c**. It works by accessing the registers in the part on the On Chip Memory (OCM) that is shared between both cores. This corresponds with the address space between `0xFFFF0000` and `0xFFFFFFFF`.

You will find all of the register addresses that we use in the communication defined in **comm/comm.h**. We will provide a short overview of the purpose of each of these registers.

**Locks**

* `PSI_LOCK`: This register is used for the lock bit that is turned on when one of the CPU's is reading/writing to the shared memory. This avoids that both CPU's write something at the same time or read something that is about to be updated by the other CPU. 
 * `LOG_REQ`: This register is used by python to request an update to the log. It implements a simple handshake mechanism. Python set's the bit to 1 in order to request an update to the log. C sees that this bit is 1 (this happens in the while loop in **main.c** and updates all of the data in the log registers. When it is done it set's the request bit to 0. When Python sees this it knows that it can now read all of the data.

**Flags**
 
 * `MODE_FLAG`: This flag communicates the current mode to Python. 0 for Manual, 1 for Altitude and 2 for Navigating. 
 * `INIT_FLAG`: This flag is used by Python to indicate that the measurement currently stored in shared memory is the first measurement taken after a mode switch. This means that this measurement can be used by the navigation controller to initialize it's observer.
 * `IND_FLAG`: This flag is used to communicate whether inductive is currently on. This information can be used by Python to know that it can close down the processes related to logging.
 * `LAND_FLAG`: This bit is set to 1 by Python when it detects a QR code containing the land command.



**Values**

* `POS_X`, `POS_Y`: The coordinates in meters measured by image processing on Python.
 * `TARGET_X`, `TARGET_Y`: The target position in meters read out by image processing.
 * `LOG`: This address should always be at the end of the shared memory range as it indicates the start of an array that is filled with log data.

All of these registers are used by C in the following methods:

 * log_mode: It stores the current state of the mode switch in the `MODE_FLAG` register. It is executed each update of the FSM.
 * `log_data`: It checks the LOG_REQ bit. When it is one it dumps a lot of data in the `log_cpu_0` variable which contains a reference to an array starting at the address stored in LOG.
 * `read_psi`: It reads the position and target measured by image processing and updates the correct variables with this measurement.

## What to implement
The main things you will have to update are located in **control/**. Here you will find three pairs of header and source files that are meant to describe the controller functionality. Each of these contains two methods that you will have to fill in. One ending in `_flying` and one ending in `_init`. The first is supposed to use the measurements and inputs provided by the RC or other controllers to calculate an output that can be transferred to the motors or to other controllers. The second is meant to initialize the observer and integrator.

To help you with this we will give you an overview of all of the different input's and output's you can use.


**attitude.c**

 - `r`: This array contains four elements which describe the reference quaternion that the controller has to track.
 - `q`: This array contains the measurement of the current attitude of the drone. It is provided by the AHRS system implemented in **AHRS/ahrs.c**. 
 - `w`: This array contains the angular velocities around the x, y and z axis in that order.
 - `v`: The relative voltage output which is applied to the motors after rescaling with `PWMOutput`.


**altitude.c**

 - `rz`: Float containing the target height.
 - `pz`: Height measurement provided by the sonar
 - `u_c`: The thrust with the bias from the hover throttle removed


**navigation.c**

 - `rx`, `ry`: Floats containing the target x and y positions
 - `px`, `py`: Floats containing the measurements of the position provided by the image processing
 - `u_rot_x`, `u_rot_y`: Pitch and Roll references for the attitude controller with the bias removed.

Note that for the last two controller we mentioned that we remove the bias. This bias is taken from input of the remote control. This functionality is implemented in **utils/input_bias.c**. The bias has to be added later, this happens in `thrust_out` for altitude and `rot_reference_out` for navigation.

**logger**
One more thing you will have to implement is the logger. This is taken care of by the WVTL module, however the navigation module has to decide what has to be logged. As mentioned earlier logging is handled in **comm/comm.c** in the `log_data` function. You can already find some examples that show how you can send data to the python core in there. It is up to you to add as many other values to the `log_cpu_0` array that you wish to log.

**rtune**
To help implement the controllers you can use the value in `rtune`. It is connected to the rightmost trimmer on the remote control. It varies between -0.5 and +0.5. You can add it to some of the parameters in your controller so you can tune it while in flight.