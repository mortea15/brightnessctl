#! /bin/bash

brightFolder="/sys/class/leds/asus::kbd_backlight/"
stepSize=1
currentbrigth=`cat $brightFolder"brightness"`
