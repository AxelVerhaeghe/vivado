#!/bin/sh

case "$1" in
  start)

        echo "Loading modules for DVB core"
        modprobe tun
	modprobe eagletx

    echo "Searching for frontend"
	while [ ! -c /dev/eagletx ]; do
	    EagleTXController -G 63 -F 866000000 -S 13000000 -d dvb_output_buffer -c -B -x /dev/eagletx >/tmp/eagle.txt
		sleep 1
	done
	cat /tmp/eagle.txt
	rm /tmp/eagle.txt

	v4l2-ctl -d /dev/eagletx --all

	modprobe xilinx-dma
	modprobe ns_nightshade

    echo "Starting ULE"
    uleframer -d soc0/43c20000.ns_nigthshade -o v4l2 -B -q 4 -N -x /dev/nightshade
    
    echo "Configuring Modulator"
    v4l2-ctl -d /dev/nightshade -c dvb_s2_modcod=4
    v4l2-ctl -d /dev/nightshade -c dvb_s2_rrc_rolloff=0
    v4l2-ctl -d /dev/nightshade -c dvb_s2_baseband_interpolation=5
    v4l2-ctl -d /dev/nightshade -c dvb_s2_baseband_gain=600
    #v4l2-ctl -d /dev/nightshade -c dvb_s2_baseband_gain=160
    v4l2-ctl -d /dev/nightshade -c dvb_s2_dummy_pl_frames=1
    v4l2-ctl -d /dev/nightshade -c dvb_s2_pilot_tones=1
    v4l2-ctl -d /dev/nightshade -c dvb_s2_blocksize=0
    v4l2-ctl -d /dev/nightshade -c add_mpeg_null_packets=0
    v4l2-ctl -d /dev/nightshade -c lsb_of_null_pid=255

    v4l2-ctl -d /dev/nightshade --all

    echo "Setting IP paramters"
    ip addr add 192.168.10.1/24 dev dvb0
    ip -6 addr add BBBB::1/64 dev dvb0
    ip link set dev dvb0 up

    sleep 1
	v4l2-ctl -d /dev/nightshade -c dvb_s2_modcod=15
        ;;
  stop)
    killall -9 uleframer
    rm /dev/nightshade
    sleep 1
    killall -9 EagleTXController
    rm /dev/eagletx
    sleep 1
	modprobe -r eagletx
	modprobe -r ns_nightshade
    modprobe -r xilinx-dma
    modprobe -r tun

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

