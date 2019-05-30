# !/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f
