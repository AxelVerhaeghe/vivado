#!/bin/sh

#Set the filename to save the video to (leave blank to stop saving)
VIDEOFILE=/media/video.rtp

case "$1" in
  start)

        echo "Starting camera"
	ethtool -s eth0 duplex full speed 10 autoneg off
        (rtprelay 1 192.168.10.2 5000 0 $VIDEOFILE >/dev/null ) &

        ;;
  stop)
    killall -9 rtprelay

        ;;
  restart|reload)
        "$0" stop
        "$0" start
        ;;
  *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
esac

exit $?

