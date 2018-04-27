
# EAGLE - delivered materials
This folder contains all of the starting materials for the different modules in the EAGLE project.

## Contents

 - **BareMetal**: Contains the C source code used by the navigation module
 - **Framework**: Contains the Python threading framework used by the image processing module
 - **Hardware**: Contains the source files for the Vivado project.
 - **Mex**: Contains C and Matlab code that can be used to test C code in Matlab.
 - **SDCard**: Contains all of the files needed to build an SD Card that can be used to run everything on the drone
 - **ESC**: Contains the PCB project for the ESC team to use
 - **WPT**: Contains libraries for the arduino UNO and some C examples for WPT to use.
 - **Odroid**: Contains all of the files needed for the SD that drives the Odroid.

## Instructions
The rest of this document contains some instructions regarding the usage of the provided materials. Most of these have a more detailed equivalent in the Software Overview document. (For example on how to create boot images and how to create XSDK projects).

### Building the Vivado Project
The files that have been provided contain an exported version of the Vivado project. To make changes you will have to import it by following the next few steps

 1. **Open Vivado**: First you have to launch Vivado. We won't be opening a project yet. In the bottom of the window you will find the Tcl console we will be using this.
 2. **Change Directory**: Type cd <location of this repository>/Hardware/TCL/ the "find tcl command here" text field and press ENTER. This should change the directory to the correct place to run the source script.
 3. **Source the files**: Again in the Tcl console execute source drone.tcl. This will open up the project.

### Building the SDK workspace
Once you cloned the github repository you need to take a couple of steps in order to create the environment that can be used to develop the navigation controller.

 1. **Opening Vivado**: First you have to launch vivado and open the drone.xpr project file located in Hardware/drone/drone.xpr via File>Open Project in the top-left corner of the workspace. (you don't have to do this if you just finished creating the Vivado Project)
 2. **Creating Bitstream**: Left click the Generate Bitstream In the bottom left of the Flow Navigator (left panel in the workspace). This will build the hardware and can take quite a while.
 3. **Exporting Hardware**: We will now have to export the hardware so that the Xilinx SDK can access it. You do this via File>Export>Export Hardware. Make sure that export bitstream is checked. You can keep the value of Export To as local to project.
 4. **Opening the SDK**: We can now open the SDK. When you do this for the first time, you have to open it via Vivado. You can do this via File>Launch SDK. You can keep Exported Location and Workspace as local to project as well. Just make sure that Exported Location is the same as the one you selected in the previous step.

### Creating a Standalone Project
You have two modes of operation for the C code. The first option is Standalone, where we only have the C code running on CPU0. This is easier to debug. You can however only use this option when testing attitude and altitude mode of the controllers as the python code will not be running.

 1. **Create the project**: You can do this via File>New>Application Project.
 2. **Project settings**: Choose a name for the project. For example: Autopilot-BM. Keep everything else as default and then click Next.
 3. **Select a template**: Choose the Empty Application template and click Finish. You should now have two new projects in the Project Explorer on the left.
 4. **Import Source Code**: Copy all of the files located in BareMetal/src/ and copy them to the src folder in the project you just created. Some errors will show up.
 5. **Import Math**: To fix the errors we have to import the math library. Do this by right clicking the project in the Project Explorer and clicking C/C++ Build Settings. Then under Tool Settings you have a tree of settings. Look for the one called Libraries under ARM v7 gcc linker. Then click the + button on the right of the screen next to Libraries (-l). Fill in m into the text field and press Ok. Then exit the project settings by pressing Ok again. The errors should have disappeared.
 6. **Disable IPC setup**: Make sure that in src/main.c in the main method the line saying eagle_setup_ipc(); is commented out.

You now have a working project. You can add your controller code to the source files in the control folder in src.

### Creating an AMP Project
The other mode of operation for the C code is the AMP mode. Here the C code runs on the second CPU (CPU1) while Linux runs on CPU0. This mode, while slower to boot has all of the required functionality for the entire project.

 1. **Create the project**: You can do this via File>New>Application Project.
 2. **Project settings**: Choose a name for the project. For example: Autopilot-AMP. Change the Processor under Target Hardware to ps7_cortex9_1. Keep everything else as default and then click Next.
 3. **Select a template**: Choose the Empty Application template and click Finish. You should now have two new projects in the Project Explorer on the left.
 4. **Import Source Code**: Copy all of the files located in BareMetal/src/ and copy them to the src folder in the project you just created. Some errors will show up.
 5. **Import Math**: To fix the errors we have to import the math library. Do this by right clicking the project in the Project Explorer and clicking C/C++ Build Settings. Then under Tool Settings you have a tree of settings. Look for the one called Libraries under ARM v7 gcc linker. Then click the + button on the right of the screen next to Libraries (-l). Fill in m into the text field and press Ok. Then exit the project settings by pressing Ok again. The errors should have disappeared.
 6. **Enable IPC setup**: Make sure that in src/main.c in the main method the line saying eagle_setup_ipc(); is uncommented out
 7. **Modify Board Support Packages**: When we create a project, two projects appear in the Project Explorer. One of them has the name you chose in step two followed by _bsp. Expand the files in that project and open system.mss. Then in the view that opened press Modify This BSP's Settings. Under drivers on the left click ps_cortex9_1 and then on the right in the Value field of extra_compiler_flags add -DUSE_AMP=1. Then press Ok. Some errors will pop up. Ignore these.
 8. **Update lscript.ld**: Now go to src in the project you created and open lscript.ld. Under Available Memory Regions, change the Base Address for ps7_ddr_0_S_AXI_BASEADDR from 0x100000 to 0x18000000 and save the file.
 
 You now have a working project that can run besides Linux.  You can add your controller code to the source files in the control folder in src.
 
### Creating the First Stage Boot Loader (FSBL)
To get your C code on an SD card you have to create a FSBL project as well

 1. **Create the project**: You can do this via File>New>Application Project.
 2. **Project settings**: Name your project FSBL. Keep everything else as default and then click Next.
 3. **Select a template**: Choose the Zynq FSBL template and click Finish. You should now have two new projects in the Project Explorer on the left.

You now have an FSBL project in your workspace. Well done.

### Creating a BOOT.bin for standalone operation
A BOOT.bin file contains all of the compiled C code. When added in the root folder on an SD card all of your code should execute automatically at startup. These steps only work for a project created with the Creating a Standalone Project instructions.

 1. **Building the project** Make sure that your project has been build by right clicking it in the Project Explorer and clicking Build Project. 
 2. **Creating the BOOT.bin** Right click the project again and click Create Boot image. A window should pop up. Make sure that you have three partitions under Boot image partitions; FSBL.elf, drone_wrapper.bit, [project name].elf in that order. If this is the case you can press Create Image. A new folder will appear under your project in the Project Explorer called bootimage. This contains a .bif file with the creation settings of your BOOT.bin and the BOOT.bin itself
 3. **Building the SD card**: Copy the BOOT.bin file you just created to the root of an SD card. Make sure it is called BOOT.bin otherwise it will not be executed
 4. **Running the SD card**: Place the SD card into the slot on the Zybo. Make sure that the jumper below the VGA port called JP5 is placed over the two pins marked SD. When you start up the Zybo the code should run. 

### Creating a BOOT.bin for AMP operation
When running the C code together with the Linux we need to change some of the partitions on the BOOT.bin. These instructions only work for a project created by following the Creating an AMP Project instructions.

 1. **Building the project** Make sure that your project has been build by right clicking it in the Project Explorer and clicking Build Project. 
 2. **Creating the BOOT.bin** Right click the project again and click Create Boot image. A window should pop up. Make sure that you have three partitions under Boot image partitions; FSBL.elf, drone_wrapper.bit, [project name].elf in that order. If this is the case you can press Create Image. A new folder will appear under your project in the Project Explorer called bootimage. This contains a .bif file with the creation settings of your BOOT.bin and the BOOT.bin itself. We have to add one more partition. Do this by pressing Add in the bottom right. Browse for BareMetal/u-boot.elf and press ok. Now you should have four partitions. Select u-boot.elf, which is at the bottom for the moment, and press Up. The order of the partitions should now be: FSBl.elf, drone_wrapper.bit, u-boot.elf, <project name>.elf. If this is the case you can press Create Image
 3. **Building the SD card**: Copy the BOOT.bin file you just created to the root of an SD card. Make sure it is called BOOT.bin otherwise it will not be executed. You should also add all of the files under the SD Card folder to the SD card and place your python code in a folder named python in root. In the end your SD card should contain: autorun.sh, BOOT.bin, rootfs.cpio.boot, rwmem.elf, start-camera.sh, start-dvb.sh, system.dtb, uImage, python/ (folder containing your python files. The script launch.py in there will be launched on startup).
 4. **Running the SD card**: Place the SD card into the slot on the Zybo. Make sure that the jumper below the VGA port called JP5 is placed over the two pins marked SD. When you start up the Zybo the code should run. 
