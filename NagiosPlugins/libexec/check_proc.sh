#!/usr/bin/bash

STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=3


a=`ps -aux | grep -v USERS | wc -l`

if [ $a -gt 125 ]
then
    echo "Total-Processes-$a"
    echo "Critical-$STATE_CRITICAL"
elif [ $a -gt 100 ]
then
    echo "Total-Processes-$a"
    echo "Warning-$STATE_WARNING"
else
    echo "Total-Processes-$a"
    echo "Ok-$STATE_OK"
fi
