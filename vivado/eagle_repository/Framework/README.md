# Python Framework - Overview
The python code provided in this folder provides among others functionality to:

 - Communicate with the C code running on the other CPU
 - Running a Thread handling image processing
 - Running a Thread handling the QR detection/decryption
 - Running a Thread handling Logging

All of these should provide the Image Processing and WVTL teams with a good basis to start development.

## Threads
As mentioned earlier, we have three threads:

 1. **logger**: Executes at a constant frequency, reading data from the BareMetal CPU and sending it over the telemetry link.
 2. **vision**: Reads images from the camera and processes them to get position measurements. Starts crypto when we are above a QR code.
 3. **crypto**: Detects and Decrypts a QR code.

You can find the code for these threads in the **threads** package under the same names. They all contain a single class that implements the **SuperThread** class, defined in **superthread.py**

###Logger
The logger runs at a constant frequency specified in **LOG_PERIOD**. It is advised to keep the value as 5.0/238.0 as lowering the period could result in log frames being dropped as it cannot process them fast enough. Data is read from the BareMetal CPU using the **get_log_data** method from **comm.py**. This method returns the array **log_cpu_0** that is written to shared memory in the **log_data** method in **comm/comm.c**. Note that you will have to update the value of **LOG_SIZE** in **comm.py** if you wish to add more values to the array. 

You will also find some lines of code demonstrating how to send strings over the wireless telemetry link

    
                sock.sendto("This is the message!", ("192.168.10.2", 1234))  

The "This is the message!" string has to be replaced by your data. You could for example parse your array as a [JSON](https://nl.wikipedia.org/wiki/JSON). To enable fast parsing.

The Logger shuts down when the inductive switch on the remote control is turned on. This allows for wrapping up thing in a clean way. For example: if you wish to also store your log in a file on the SD card then you would use this shut down to close the file. You can also use this to shut down the socket.



### Vision
Vision is the thread that handler image processing. It runs as fast as possible, but has to wait for I/O when it tries to read from the camera. This time can be spend executing the two other threads.  

The image processing module will have to add their own code to the runvideo method in the vision class. The goal is to update the x, y coordinates with the measured position in meters. Note that the measured position has to be continuous, we don't just want to know what square we are in.

### Crypto
Crypto is a thread that handles the QR detection and decryption. In vision you will find that Crypto is launched when **decryption** is true. This value has to be updated based on the measured position as we only want to execute Crypto when we are hovering above a QR code. The implementation of Crypto is very bare bones. It just receives a frame from the camera and the goal is to check if it contains a QR code and if so, decode it and extract the next target position in meters. The image from the camera is stored in **self.image**.

## Inter Processor Communication
This section is linked to the section of the same name in the BareMetal code overview. It is advised to read that section first as it provides a more detailed overview of the different register addresses and their purpose. 

All of the inter processor communication is handled in the **comm.py** file in the **comm** module. It works in a very similar fashion to it's BareMetal equivalent **comm.c** in **src/comm**. The most significant difference is the way that the locks are handled. The BareMetal code has to run as fast as possible. So when it finds that a value it want's to access in shared memory is locked, it just skips that write/read and continues execution.  Python has more time (especially because we use threading, so if one thread is waiting for something, other threads will be able to continue). This enables us to use time outs. 

These are configured using two values. **REQ_TIME_OUT** defines the total amount of times we check the lock. **REQ_WAIT_TIME** defines the time we wait between each check in seconds. The time outs are implemented in the **wait_for_reg** method.
