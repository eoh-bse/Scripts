#!/bin/bash

source std_lib.sh

echo -e "${YELLOW}Authorize docker installation...${NO_COLOR}"

echo "Removing any old versions of docker..."

sudo dnf remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine

echo "Installing latest version of docker..."

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker

echo "Docker Engine has been succesfully installed"
echo "Docker Compose will be installed"

sudo dnf install docker-compose
