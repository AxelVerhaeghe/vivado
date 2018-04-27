"""
Author: Peter Coppens
Date: 18/03/2017
Version: 1.0

This script logs data written in the LOG registers by the bare metal core
"""

import threads.superthread
import threading
from comm.comm import *
import socket

LOG_PERIOD = 5.0 / 238.0  # How often do we attempt logging the data


class Logger(threads.superthread.SuperThread):
    """
    This class should gather data from the bare metal core and the other python threads
    and send them over the wireless telemetry link for logging purposes
    """

    def __init__(self, thread_id, name, framework):
        """
        Create a new logging thread
        """
        super(Logger, self).__init__(thread_id, name, framework)
        self.flag = threading.Event() # This flag is used to limit the speed of the logger
        self.running = True

    def run(self):
        """
        Initiates the main loop of the logging thread
        """
        time.sleep(10)  # Wait 10 seconds to allow network to be set up, otherwise socket creation causes errors
        print "Starting data logging"
        self.set_flag()
        self.main_loop()

    def main_loop(self):
        """
        The main loop of the logging thread. Every iteration, it waits for the flag to be set.
        As soon as this happens, the flag is cleared and a timer is started to set the flag for the next iteration
        """
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        while self.running:
            # Set a timer for a pending next iteration
            self.flag.wait()
            self.flag.clear()

            # If inductive mode is on, we turn off the log
            if inductive_mode() == IND_ON:
                self.running = False
            else:
                threading.Timer(LOG_PERIOD, self.set_flag).start()  # This timer sets the flag after LOG_PERIOD
                                                                    # allowing the next iteration to start
                data = get_log_data()  # Read data from the bare metal core
                sock.sendto("This is the message!", ("192.168.10.2", 1234))  # Replace the message with your data


        self.flag.clear()
        sock.close()
        print "Stopped logging"

    def set_flag(self):
        self.flag.set()
