#!/bin/bash

# Install vscode via snap
snap install code --classic
sudo apt install default-jre

# Install ros extensions
code --install-extension ms-vscode.cpptools
code --install-extension austin.code-gnu-global
code --install-extension ms-python.python
code --install-extension redhat.vscode-yaml
code --install-extension coenraadS.bracket-pair-colorizer-2
code --install-extension gruntfuggly.todo-tree
code --install-extension atishay-Jain.All-Autocomplete

