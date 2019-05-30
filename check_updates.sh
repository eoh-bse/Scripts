# !/bin/bash

echo Checking updates for packages...

sleep 10

sudo apt update

if [ $? -ne 0 ]; then
    echo Error while trying to check packages to update!
    exit 0
fi

apt list --upgradable

echo "Update? (y/n)"

read answer

if [ "$answer" = "y" ]; then
    sudo apt upgrade
else
    echo "No packages were updated"
    exit 0
fi
