OLD_VALUE=$(gsettings get org.gnome.desktop.interface gtk-theme)
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
sudo bash /home/nk/Programs/Digi/XCTU-NG/launcher
gsettings set org.gnome.desktop.interface gtk-theme ${OLD_VALUE}
