#!/usr/bin/env bash

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage

sudo mv -f ./nvim.appimage /usr/local/bin/nvim
