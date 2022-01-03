#!/bin/bash

wget https://zoom.us/client/latest/zoom_x86_64.rpm

sudo dnf localinstall zoom_x86_64.rpm

rm zoom_x86_64,rpm

echo "Successfully installed Zoom"
