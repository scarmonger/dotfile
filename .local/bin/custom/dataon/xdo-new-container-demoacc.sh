#!/bin/bash

param1=${#1}
echo $param1


if [ $param1 -eq 0 ]
then
	 sleep 1; xdotool key alt+d shift+0xff09 shift+0xff09 shift+0xff09 shift+0xff09 shift+0xffc7 d; sleep 1;
else
	 sleep 1; xdotool key alt+d shift+0xff09 shift+0xff09 shift+0xff09 shift+0xff09 shift+0xffc7 e $1; sleep 1;

	 # change focus with f6
	 xdotool key 0xffc3; sleep 1
fi


# go to input password 
for i in {1..7}; do xdotool key 0xff09; done; sleep 1

# back to username 
xdotool key shift+0xff09 type gordon; 
xdotool key 0xff09 type password123
xdotool key 0xff09 type dataon1_demo;
xdotool key enter;
#0xff09 0xff09 0xff09 0xff09 0xff09 0xff09 0xff09 0xff09 0xff09 
