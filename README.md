# kbd_brightness

## configuration
Find the leds that control your keyboard backlight

	$ ls /sys/class/leds

Copy the name and paste it in the [configuration.sh](configuration.sh) file.
You can also set the stepSize to values that make sense for your device. Check the output of the following command to get an idea:

	$ cat /sys/class/leds/DEVICE_NAME/max_brightness

## installation

    $ sudo make install

### Make sudo not ask for a password
The script needs to be able to be run as root without sudo asking for a
password (otherwise you can't keybind it).

	$ sudo visudo

and insert the following lines

	Cmd_Alias PASSWORDLESS = /usr/local/bin/kbd_brightness
	username ALL=(root) NOPASSWD: PASSWORDLESS

### Testing
Now type

	$ kbd_brightness 3
	$ kbd_brightness 0

The birghtness should have chagned.
Now you can setup keybindings to this script for your favorite window manager!

### Key binding (i3)
If you use i3 you could use the following lines in your config to fix keybinding:

	bindsym XF86KbdBrightnessUp exec kbd_brightness+
	bindsym XF86KbdBrightnessDown exec kbd_brightness-

## Based on [brightnessctl](https://github.com/jappeace/brightnessctl)
**Credits to [@jappeace](https://github.com/jappeace) for his work.**