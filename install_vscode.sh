# !/bin/bash

source std_lib.sh

type code > /dev/null 2>&1
if [ $? -eq 0 ]; then
  exit 0
fi

handle_error_vscode () {
  if [ $? -ne 0 ]; then
    echo "Error while trying to install VSCODE..."
    exit 0
  fi
}

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ~/microsoft.gpg
handle_error_vscode
sudo install -o root -g root -m 644 ~/microsoft.gpg /etc/apt/trusted.gpg.d/
handle_error_vscode
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
handle_error_vscode
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
handle_error_vscode
sudo apt update
handle_error_vscode
sudo apt install code
handle_error_vscode
