#!/bin/bash

echo "Adding terminator ppa.."
sudo add-apt-repository ppa:gnome-terminator/nightly-gtk3 -y

echo "Installing terminator.."
sudo apt update
sudo apt install -y terminator

echo "Adding useful plugins"
# First check if folder exists and create otherwise
mkdir -p ~/.config/terminator/plugins
wget https://raw.githubusercontent.com/choffee/terminator-plugins/master/searchplugin.py -O ~/.config/terminator/plugins/searchplugin.py
