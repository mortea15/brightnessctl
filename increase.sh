#! /bin/bash

cd "/usr/local/lib/kbd_brightness"
source configuration.sh

sudo /usr/local/bin/kbd_brightness `expr $currentbrigth + $stepSize`
