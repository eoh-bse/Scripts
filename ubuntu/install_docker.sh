# !/bin/bash

source std_lib.sh

echo -e "${YELLOW}Authorize docker installation...${NO_COLOR}"

sudo apt update
handle_error "Could not apt update"

sudo apt install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
handle_error "Could not install pre-requisite dependencies"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
handle_error "Could not download Docker's Official GPG Key"

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
handle_error "Failed to add docker repository to apt"

sudo apt update
handle_error "Failed to apt update"

sudo apt install docker-ce docker-ce-cli containerd.io
handle_error "Failed to install docker-ce docker-ce-cli containerd.io"

echo "Allowing docker command without sudo..."

# sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
