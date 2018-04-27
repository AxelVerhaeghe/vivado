import ctypes
import struct

CLK_MEASURE = 100000000
_frame = ctypes.CDLL("/media/python/comm/libwrapper.so")


def wmem(arg1, arg2):
    """
    Write integer to OCM in physical memory
    :param arg1: address (must be higher than 0xFFFF0000 for OCM)
    :param arg2: data (integer)
    """
    global _frame
    _frame.wmem(ctypes.c_ulonglong(arg1), ctypes.c_int(arg2))


def wmemf(arg1, arg2):
    """
    Write float to OCM in physical memory
    :param arg1: address (must be higher than 0xFFFF0000 for OCM)
    :param arg2: data (float)
    :return: 
    """
    global _frame
    _frame.wmemf(ctypes.c_ulonglong(arg1), ctypes.c_float(arg2))


def rmem(arg1):
    """
    Read integer from OCM in physical memory
    :param arg1: address (must be higher than 0xFFFF0000 for OCM)
    :return: integer in the register address
    """
    global _frame
    result = _frame.rmem(ctypes.c_ulonglong(arg1))
    return result


def rmemf(arg1):
    """
    Read float from OCM in physical memory
    :param arg1: address (must be higher than 0xFFFF0000 for OCM)
    :return: float in the register address
    """
    global _frame
    result = _frame.rmem(ctypes.c_ulonglong(arg1))
    return struct.unpack('f', struct.pack('i', result))[0]
