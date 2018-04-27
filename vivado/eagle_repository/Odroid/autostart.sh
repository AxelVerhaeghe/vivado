#!/bin/sh

#Add custom commands here

#start a shell
/sbin/getty -L -n -l /bin/sh ttyAMA0 115200 vt100 &
