# !/usr/bin/env bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

sudo mv -f ./nvim.appimage /usr/local/bin/nvim
