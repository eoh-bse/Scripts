#!/usr/bin/env bash

install_file=zoom_x86_64.rpm

wget https://zoom.us/client/latest/$install_file

sudo dnf localinstall $install_file

rm $install_file

echo "Successfully installed Zoom"
