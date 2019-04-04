#! /bin/bash

cd "/usr/local/lib/kbd_brightness"
source configuration.sh
if [ -z "$1" ]
then
	value=`cat $brightFolder"max_brightness"`
else
	value=$1
fi
echo "changing brightness to:"
echo $value | sudo tee $brightFolder"brightness"
