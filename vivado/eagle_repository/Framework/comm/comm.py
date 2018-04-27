"""
This file defines some addresses in shared memory that the two CPU's access.

The equivalent of this file in the BareMetal is comm.h
Note that all of these are memory addresses in the OCM and should therefore be in
the range 0xFFFF0000, 0xFFFFFFFF. (Zynq TRM p741)

author: Peter Coppens @ EAGLE4
"""
from wrapper import *
import time

# locks
VISION_LOCK = 0xFFFF1000   # the acceleration request flag (set to 1 to request acc data)
LOG_REQ = 0xFFFF1004    # nav lock (set to 1 when writing to NAV_ registers and to 0 when data is available)

#  navigation flag input register
MODE_FLAG = 0xFFFF2000  # the mode flag
INIT_FLAG = 0xFFFF2004  # the navigation init flag (turned on when the first vision data has been written)
IND_FLAG = 0xFFFF2008   # the inductive mode flag
LAND_FLAG = 0xFFFF200C  # the landing command flag

# vision coordinates
POS_X = 0xFFFF2010      # x-coordinate measurement
POS_Y = 0xFFFF2014      # y-coordinate measurement

# navigation target
TARGET_X = 0xFFFF2020   # x-target position
TARGET_Y = 0xFFFF2024   # y-target position

# log registers
LOG = 0xFFFF3000        # start of the log address space

# request settings
REQ_TIME_OUT = 10       # how long do we wait for baremetal (LOG_TIME_OUT * LOG_WAIT_TIME is this time in seconds)
REQ_WAIT_TIME = 0.001   # wait time of one cycle

# modes
MANUAL = 0
ALTITUDE = 1
NAVIGATING = 2
ERROR = 3

# inductive modes
IND_OFF = 0
IND_ON = 1
IND_ERR = 2

# log settings
LOG_SIZE = 3  # size of the log
LOG_ELEMENT_SIZE = 4  # size of each log element


def wait_for_reg(address, value=0):
    """
    Wait for the register at the provided address to assume the provided value
    :param address:     address of the register
    :param value:   value we are waiting for
    :return:        False if the register is not responding
                    True if the register has the provided value
    """
    # wait until the data becomes available
    count = 0
    while count < REQ_TIME_OUT:  # if measurement doesn't arrive we forget about it
        flag = rmem(address)
        if flag == value:
            break
        count += 1
        time.sleep(REQ_WAIT_TIME)

    # the lock is most likely dead
    if rmem(address) != value:
        return False

    # the register is available
    return True


def write_coordinates(px, py, initial=False):
    """
    Write the position measurement to the baremetal
    :param px: x coordinate 
    :param py: y coordinate
    :param initial: True if the provided measurement can be used to reset navigation
    """

    # wait for lock to become available
    if not wait_for_reg(VISION_LOCK, 0):
        # TODO panic?
        return

    # set lock while writing
    wmem(VISION_LOCK, 1)

    # write the data
    wmemf(POS_X, px)
    wmemf(POS_Y, py)
    if initial:
        # set initial flag
        wmem(INIT_FLAG, 1)
        print "written initial measurement"

    # unlock the navigation settings
    wmem(VISION_LOCK, 0)


def write_target(target_x, target_y, landing=False):
    """
    Write the position reference to the baremetal
    :param target_x: x coordinate of target
    :param target_y: y coordinate of target
    :param landing: True if the target indicates a land command
    """

    # wait for lock to become available
    if not wait_for_reg(VISION_LOCK, 0):
        # TODO panic?
        return

    # set lock while writing
    wmem(VISION_LOCK, 1)

    # write the data
    wmemf(TARGET_X, target_x)
    wmemf(TARGET_Y, target_y)

    # write the landing flag
    wmem(LAND_FLAG, 1 if landing else 0)

    # unlock the navigation settings
    wmem(VISION_LOCK, 0)


def flight_mode():
    """
    Get the current flight mode
    :return: 1 if we are in nav mode, 0 if we aren't
    """

    # wait for lock to become available
    if not wait_for_reg(VISION_LOCK, 0):
        # TODO panic?
        return

    # set lock while writing
    wmem(VISION_LOCK, 1)

    # read the value
    mode = rmem(MODE_FLAG)

    # unlock the navigation settings
    wmem(VISION_LOCK, 0)

    return mode


def inductive_mode():
    """
    Get the current flight mode
    :return: 1 if we are in nav mode, 0 if we aren't
    """

    # wait for lock to become available
    if not wait_for_reg(VISION_LOCK, 0):
        # TODO panic?
        return

    # set lock while writing
    wmem(VISION_LOCK, 1)

    # read the value
    mode = rmem(IND_FLAG)

    # unlock the navigation settings
    wmem(VISION_LOCK, 0)

    return mode


def get_log_data():
    """
    Get log data from the baremetal core
    :return; list of the data from the log specified by LOG_FORMAT
    """
    # set flag and wait for baremetal to write the data
    wmem(LOG_REQ, 1)
    if not wait_for_reg(LOG_REQ, 0):
        return None

    # read all of the log data and put it in a list
    res = []
    for i in range(0, LOG_SIZE):
        res.append(rmemf(LOG + i * LOG_ELEMENT_SIZE))

    return res
