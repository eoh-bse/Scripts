# !/bin/bash

source std_lib.sh

echo -e "${YELLOW}Authorize docker installation...${NO_COLOR}"

sudo apt update
handle_error "Could not apt update"

sudo apt install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
handle_error "Could not install pre-requisite dependencies"

curl -L https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
"Could not download Docker's Official GPG Key"

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
handle_error "Failed to add docker repository to apt"

sudo apt update
handle_error "Failed to apt update"

sudo apt install docker-ce docker-ce-cli containerd.io
handle_error "Failed to install docker-ce docker-ce-cli containerd.io"
