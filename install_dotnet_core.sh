# !/bin/bash

source std_lib.sh

wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -P ~/Downloads/
handle_error "Failed to download packages-microsoft-prod.deb"

echo "${YELLOW}Authenticate for installing the .deb package${NO_COLOR}"
sudo dpkg -i ~/Downloads/packages-microsoft-prod.deb
handle_error "Failed to install packages-microsoft-prod.deb"

sudo add-apt-repository universe
handle_error "Failed to add universe repository"

sudo apt install apt-transport-https
handle_error "Failed to install apt-transport-https"

sudo apt update
handle_error "Failed to apt update"

sudo apt install dotnet-sdk-2.2
handle_error "Failed to install dotnet-sdk-2.2"
