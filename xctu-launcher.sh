#!/bin/bash

# XCTU PATH
XCTU_PATH="/home/nk/Programs/Digi/XCTU-NG/launcher"

# Hide ^C text
stty -echoctl

# Save current gnome theme
OLD_VALUE=$(gsettings get org.gnome.desktop.interface gtk-theme)

# Signal Handler Function
handler(){
	# Enable ^C text
	stty sane
	
	# Set old gnome theme
	echo "[>] Changing the theme back to the original value ..."
	gsettings set org.gnome.desktop.interface gtk-theme ${OLD_VALUE}
	
	exit
}

# Trap the signal 
trap 'handler' SIGINT

# Set gnome theme to 'Adwaita'
echo "[>] Changing theme to 'Adwaita' ..."
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"

# Run Program
echo "[>] Starting program ..."
sudo bash $XCTU_PATH

# Reset and leave
handler()
