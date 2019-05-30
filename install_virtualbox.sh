# !/bin/bash

source std_lib.sh

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
handle_error "Could not add GPG key for oracle's repository"

sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
handle_error "Could not add oracle's repository"

sudo apt update
handle_error "Could apt update"

apt-cache show virtualbox-* | grep Package | awk '{ print $2 }'
handle_error "Could not show virtualbox versions"

echo "Type version to install (ex. type 6.0 to install virtualbox-6.0)"

read version

sudo apt install "virtualbox-$version"
handle_error "Could not install virtualbox-$version"
