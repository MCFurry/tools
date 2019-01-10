#!/bin/bash

wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
sudo dpkg -i vscode.deb
rm vscode.deb
