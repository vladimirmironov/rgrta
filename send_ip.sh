#!/bin/bash

. /tools/config.cfg
. /tools/functions.sh

WHO=vladimir_mironov@epam.com

report "[RGRTA]: external ip-address" "FYI: <b>$(/sbin/ip addr show ppp0 | grep inet|awk '{print $2}')</b>"

