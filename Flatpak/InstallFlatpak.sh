#!/bin/sh

# https://flatpak.org/setup/Ubuntu/

sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Additionally, remove the Ubuntu store
sudo apt purge snapd

echo "Please restart your computer."
