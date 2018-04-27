import threading
import time
from threads.logger import Logger
from vision import Vision
from comm.comm import flight_mode, NAVIGATING, ALTITUDE, ERROR, write_coordinates, write_target

VISION_ID = 1
LOGGER_ID = 2
COSIC_ID = 3


class Framework:
    """
    This class keeps track of the different threads and allows them to communicate by setting and getting
    variables of this class, using locks to prevent concurrent changes
    NOTE: ALL COORDINATES ARE DEFINED IN METERS FROM THE ORIGIN, NOT IN GRID COORDINATES
    """

    def __init__(self, timer_period):
        """
        Initiates a new framework containg the threads but doesn't start anything yet
        :param timer_period: The period of the main loop of the framework
        """
        # Create threads and put them in a list
        self.vision = Vision(VISION_ID, "vision", self)
        self.logger = Logger(LOGGER_ID, "logger", self)
        self.terminated = True
        self.threads = [self.vision, self.logger]

        # Initiate some data variables for the threads
        self.__coordinates = (0.0, 0.0)
        self.qr_detection_flag = False
        self.initiating_nav = False
        self.__target = (0.0, 0.0)
        # Create locks to prevent concurrent modification/reading
        self.__coordinate_lock = threading.Lock()
        self.__target_lock = threading.Lock()

        # Set timer period
        self.period = timer_period

        # Store the sample period information
        self.last_time = time.time()
        self.last_period = 0.0
        self.__period_lock = threading.Lock()

        # Store the last flight mode
        self.last_mode = ERROR

        # For debugging purposes
        # while(True):
        #     print self.getCoordinates()

    def start_threading(self):
        """
        Starts the logging thread and initiates the main loop with the period given during initialisation of the framework
        """
        self.logger.start()
        threading.Timer(self.period, self.main_loop).start()

    def main_loop(self):
        """
        This method is called periodically with the period given during construction of the framework
        The flight mode is checked and threads are reset or terminated accordingly
        """
        threading.Timer(self.period, self.main_loop).start()  # Restart timer
        mode = flight_mode()  # Get current flight mode

        # Threads are only active during altitude or navigation mode. In manual mode, they are terminated
        # Logger remains active all the time
        if mode == NAVIGATING or mode == ALTITUDE:
            if self.terminated:
                self.restart()
                self.initiating_nav = True  # If threads were inactive, navigation is notified that the next values are initial values
            elif mode != self.last_mode:
                self.initiating_nav = True  # When switching between altitude and navigation, nav is also reinitialized
        else:  # Terminate threads if in manual mode
            if not self.terminated:
                self.terminate()

        self.last_mode = mode

    def get_target(self):
        self.__target_lock.acquire()
        target = self.__target
        self.__target_lock.release()
        return target

    def set_target(self, target):
        """
        Sets the target variable to the given target and writes the given target to the bare metal core
        :param target: A tuple containing floating point numbers indicating the (x, y) target of the drone
        """
        self.__target_lock.acquire()
        self.__target = target
        self.__target_lock.release()
        write_target(target[0], target[1])

    def get_coordinates(self):
        self.__coordinate_lock.acquire()
        coordinates = self.__coordinates
        self.__coordinate_lock.release()
        return coordinates

    def set_coordinates(self, coordinates):
        """
        Writes the given coordinates to the framework and to the bare metal core,
        and updates the period to indicate the time between this coordinate value and the previous coordinate value
        (Useful to know whether the image processing needs to be sped up)
        If an altitude/navigation switch has taken place, the given coordinates are used as the new target
        :param coordinates: A tuple containing the floating point (x, y)-position of the drone in meters from the origin
        """
        self.__coordinate_lock.acquire()
        self.__coordinates = coordinates
        if self.initiating_nav:
            self.initiating_nav = False
            self.set_target(coordinates)
            write_coordinates(coordinates[0], coordinates[1], initial=True)
        else:
            write_coordinates(coordinates[0], coordinates[1], initial=False)
        self.__coordinate_lock.release()
        self.update_period()

    def update_period(self):
        """
        Calculates the time taken by the previous image processing iteration
        :return:
        """
        time_sample = time.time()
        self.__period_lock.acquire()
        self.last_period = time_sample - self.last_time
        self.last_time = time_sample
        self.__period_lock.release()

    def get_period(self):
        """
        :return: The processing time between the two last image processing values
        """
        self.__period_lock.acquire()
        period = self.last_period
        self.__period_lock.release()
        return period

    def terminate(self):
        """
        Stop execution of threads and reset coordinates and target to zero
        Logger is not stopped
        """
        print "terminating threads"
        self.terminated = True
        for thread in self.threads:
            if thread is not self.logger:
                thread.terminate()
        self.vision = None
        self.set_coordinates((0.0, 0.0))
        self.set_target((0.0, 0.0))
        self.threads = [self.logger]

    def restart(self):
        """
        Create and start execution of new threads
        :return:
        """
        print "restarting threads"
        self.terminated = False
        self.vision = Vision(name="vision", thread_id=VISION_ID, framework=self)
        self.threads = [self.vision, self.logger]
        self.vision.start()
