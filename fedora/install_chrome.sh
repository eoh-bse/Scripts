#!/bin/bash

echo "Installing Google Chrome..."

sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
