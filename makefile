INSTALL_FOLDER=/usr/local/lib/kbd_brightness
BIN_FOLDER=/usr/local/bin# works on most distros, nix needs sthng else
install:
	echo installing
	mkdir -p $(INSTALL_FOLDER)
	cp -R ./*  $(INSTALL_FOLDER)/
	ln -s $(INSTALL_FOLDER)/writebrightness.sh $(BIN_FOLDER)/kbd_brightness
	ln -s $(INSTALL_FOLDER)/increase.sh $(BIN_FOLDER)/kbd_brightness+
	ln -s $(INSTALL_FOLDER)/decrease.sh $(BIN_FOLDER)/kbd_brightness-
	echo "don't forget to modify your sudoers file and i3 config"

uninstall:
	echo uninstalling
	rm -R $(INSTALL_FOLDER)
	rm $(BIN_FOLDER)/kbd_brightness
	rm $(BIN_FOLDER)/kbd_brightness+
	rm $(BIN_FOLDER)/kbd_brightness-
