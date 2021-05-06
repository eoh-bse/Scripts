# !/bin/bash

EXTENSION=(
  equinusocio.vsc-material-theme
  pkief.material-icon-theme
  vscjava.vscode-java-pack
  ms-vscode.go
  hookyqr.beautify
  ionutvmi.path-autocomplete
  ms-azuretools.vscode-docker
)

for extension in ${EXTENSION[@]}
do
  code --install-extension ${extension}
done
