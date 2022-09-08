#!/usr/bin/env bash

set -e

if [ -d ~/.local/share/JetBrains/Toolbox ]; then
    echo "JetBrains Toolbox is already installed!"
    exit 0
fi

echo "Enter the JetBrains Toolbox download link: "

read DOWNLOAD_LINK

echo "Start installation..."

wget --show-progress -O jetbrains-toolbox.tar.gz $DOWNLOAD_LINK

mkdir tmp-jetbrains-toolbox-install
tar -C tmp-jetbrains-toolbox-install -xf jetbrains-toolbox.tar.gz
rm ./jetbrains-toolbox.tar.gz

tmp-jetbrains-toolbox-install/*/jetbrains-toolbox

rm -r tmp-jetbrains-toolbox-install

echo "JetBrains Toolbox was successfully installed!"
