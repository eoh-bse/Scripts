#!/bin/bash

EXTENSIONS=(
  equinusocio.vsc-community-material-theme
  pkief.material-icon-theme
  golang.go
  hookyqr.beautify
  visualstudioexptteam.vscodeintellicode
)

for extension in ${EXTENSIONS[@]}
do
  code --install-extension ${extension}
done
