#!/usr/bin/env bash

set -e

echo "Enter go version to install:"

read go_version

go_tarball=go$go_version.linux-amd64.tar.gz
go_path=/usr/local/go/bin

rm -f $go_tarball

wget "https://golang.org/dl/$go_tarball"

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $go_tarball

if grep -q $go_path "~/.bashrc"; then
    echo "export PATH=\$PATH:$go_path" >> $HOME/.bashrc
fi

source $HOME/.bashrc

go version

rm -f $go_tarball

echo "Go $go_version has successfully been installed."
