#!/bin/bash

declare -A relay
relay[1]=26
relay[2]=21
relay[3]=20
relay[4]=19
relay[5]=16
relay[6]=13
relay[7]=6
relay[8]=5

ch=${relay[$1]}
if [ $2 == 'ON' ]
then
 state=0
elif [ $2 == 'OFF' ]
then
 state=1
else
 echo "Parameter error"
 exit
fi

echo $ch > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$ch/direction
echo $state > /sys/class/gpio/gpio$ch/value
echo Relay $1 $2

