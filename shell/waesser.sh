#!/bin/bash

#waesser.sh 

function ch_und_8 {
   for ch in {1..8}
   do 
      ./switch.sh $ch OFF
   done
   ./switch.sh $1 ON
   ./switch.sh 8 ON
   sleep $2
   ./switch.sh $1 OFF
   ./switch.sh 8 OFF
}
case $1 in
    [1-7]*)ch_und_8 $1 $2;;
    *)echo "invalid number";;
esac #
