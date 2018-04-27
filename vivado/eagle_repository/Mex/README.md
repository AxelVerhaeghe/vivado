# How to use Mex
Mex is a system in MATLAB that enables you to execute C code as simple MATLAB functions. We will be using it to test the C code we create in a safe environment, before testing it in flight. This should save a lot of time that would otherwise be spend on repairing the drone after a crash.

The contents of this folder provide you with some basic scripts that will enable the navigation team to test the C code they develop in a simulation environment. They contain all of the methods and variables used by the controllers on the actual framework, but replaced by dummy implementations and connections to MATLAB. This enables you to test the actual C Code that will run on the drone in a safe environment without any changes.

## Getting the Handler in MATLAB
The example files that have been provided right now run a simplified version of the attitude controller that applies the inputs from the RC to the motors. If you want to make your own version you will have to change **mex_handlers/handler.c**

This script is the file that is executed in MATLAB. You can get a function handle of it by calling

    mex('-g', '-largeArrayDims', '-ldl', 'CFLAGS="\$CFLAGS -std=c99"', handler_path);

Where **handler_path** is the path to the **handler.c** file (for example handler_path = './mex_handlers/handler.c' if you execute this line of code from inside this folder.

When the path is set to the correct place and you execute this line of code a new variable should appear in your MATLAB workspace called handler. This is a function handler and can be called using the following syntax

    state = handler(measurements, rc_input);

**measurements** is a row vector containing all of the measurements taken by the different sensors. Currently **handler.c** is configured in such a way that this vector should contain the attitude measurement from the IMU. So the first four elements are the elements of the quaternion representing the rotation and the three last elements are the angular velocities around the x, y and z axis in that order. 

**rc_input** contains the input from the remote control, so **thrust, rot_x, rot_y, rot_z**.

**state** is a representation of the current state of the controllers. For the current version of the handler this just contains all of the relative voltages applied to the engines. You need at least these if you want to simulate the effect of the controllers on the plant in MATLAB.

## How to change the Handler
**handler.c** has three important parameters set at the top of the code. They are declared as followed:

     // Vector sizes
     #define STATE_SIZE 4
     #define MEASUREMENT_SIZE 7
     #define RC_SIZE 4
They indicate the size of the output vector, the measurement input and rc input vectors. If you want to pass more values to matlab you will have to increase **STATE_SIZE** to a higher value. If you want to process more measurements you will have to increase **MEASUREMENT_SIZE**.

The **measurements** input vector at the moment is assigned to the rotation measurements as mentioned earlier. This is done by the following code.

    // assign orientation measurement
    ahrs_orient.w = measurement[0]; 
    ahrs_orient.x = measurement[1]; 
    ahrs_orient.y = measurement[2];
    ahrs_orient.z = measurement[3];
    
    // assign velocity measurement
    gx = measurement[4];
    gy = measurement[5];
    gz = measurement[6];

**handler.c** also contains some more lines of code that are commented for the moment. They indicate how to assign the other measurements for position that will be used by the altitude and navigation controllers in later stages of development.

The values of the **rc_input** vector are assigned in the following lines of code:
    thrust = rc_input[0]; // thrust = alt_thrust;
    rot_x = rc_input[1]; // rot_x = nav_x;
    rot_y = rc_input[2]; // rot_y = nav_y;
    rot_z = rc_input[3];
  
In later stages of development the top three of these values will be changed by other values as already indicated in the comments.

The output vector is built by the following line of code.

    state[0] = v[0]; state[1] = v[1]; state[2] = v[2]; state[3] = v[3];
As you can see **state** is just an array. You can add as many values as you want, which will enable you to process them in MATLAB. Just make sure to update the length in **STATE_SIZE** as mentioned earlier.

As you already noticed **handler.c** contains a lot of commented code. It's purpose is to indicate the changes that you will have to make when you get further in the development process and want to test the navigation and altitude controllers in Mex as well.