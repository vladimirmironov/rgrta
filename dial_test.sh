#!/bin/bash


. /tools/config.cfg
. /tools/functions.sh

# report "RGRTA tv host ip address" "FYI: <b>$(/sbin/ip addr show ppp0 | grep inet|awk '{print $2}')</b>"
echo "***************$(date)*************************" >> /var/log/wvdialsky.log

if [ -a $DEVICE ]; then
     proc=$(ps -aef | grep -v grep | grep 'wvdial' | awk '{print $2}')
     if [ -z "$proc" ]; then
	wvdial 2>> /var/log/wvdialsky.log &
	sleep 30
	route del default gw
	route add default dev ppp0
	report "[RSREU]: TV-host info" "For access to the IP-address <b>$(/sbin/ip addr show ppp0 | grep inet|awk '{print $2}')</b><br> \
please use the openssh or SFTP client<br> \
and login/password pair: tv/*******<br><br> \
Please copy content to the Downloads folder.<br><br>Thank you."
    fi
fi
