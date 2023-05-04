#!/usr/bin/env bash

sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras

cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
[virtualbox]
name=Fedora $releasever - @basearch - VirtualBox
baseurl=https://download.virtualbox.org/virtualbox/rpm/fedora/37/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF

sudo dnf search virtualbox

sudo dnf install VirtualBox-7.0

sudo usermod -a -G vboxusers $USER
newgrp vboxusers
id $USER

echo "VirtualBox 7.0 has been installed"
