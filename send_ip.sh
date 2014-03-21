#!/bin/bash

. /tools/config.cfg
. /tools/functions.sh

WHO=vladimir_mironov@epam.com
#,vladimir.i.mironov@gmail.com

report "[RSREU]: external ip-address" ": <b>$(/sbin/ip addr show ppp0 | grep inet|awk '{print $2}') :</b>"
# if [ -a $DEVICE ]; then echo ooo;fi
# if [ -a /dev/ttyUSB0 ]; then echo aaa;fi


