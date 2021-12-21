# !/bin/bash

source std_lib.sh

echo Enter version:

read version

print_msg "Adding Node repository..."

type curl > /dev/null 2>&1 || sudo apt install curl

curl -sL "https://deb.nodesource.com/setup_$version.x" | sudo -E bash -

handle_error "Node repository could not be added"

sudo apt install nodejs

handle_error "Node could not be installed"
