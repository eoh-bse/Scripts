# !/bin/bash

EXTENSION=(
  pkief.material-icon-theme
  ms-vscode.cpptools
  ms-vscode.csharp
  ms-vscode.go
  ionide.ionid-fsharp
  octref.vetur
  hookyqr.beautify
  eg2.vscode-npm-script
  formulahendry.auto-close-tag
  formulahendry.auto-close-tag
  ionutvmi.path-autocomplete
  sidthesloth.html5-boilerplate
  sdras.vue-vscode-snippets
)

for extension in ${EXTENSION[@]}
do
  code --install-extension ${extension}
done
