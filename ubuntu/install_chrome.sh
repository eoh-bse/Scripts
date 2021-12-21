# !/bin/bash

CHROME_PKG="google-chrome-stable_current_amd64.deb"

wget https://dl.google.com/linux/direct/$CHROME_PKG
sudo dpkg -i $CHROME_PKG
sudo apt install -f

echo Succesfully installed Google Chrome

echo Deleting chrome installation package...

rm $CHROME_PKG

echo Successfully deleted
