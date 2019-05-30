# !/bin/bash

source std_lib.sh

print_msg "Florale project dev env setup is starting..."

bash install_git.sh
handle_error "Git installation failed"

bash install_node.sh
handle_error "Node JS installation failed"

bash install_dotnet_core.sh
handle_error ".Net core installation failed"

bash install_vscode.sh
handle_error "Visual Studio Code installation failed"

bash install_vscode_extensions.sh
handle_error "Failed to install necessary Visual Studio Code extensions"

bash generate_ssh_ed25519.sh
handle_error "Failed to generate ssh key for gitlab"

print_msg "Clone the following repository: git@gitlab.com:oh.applications/florale-client-app.git"
print_msg "And start working you noob!"
