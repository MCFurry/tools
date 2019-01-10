#!/bin/bash

echo "Adding terminator ppa.."
sudo add-apt-repository ppa:gnome-terminator -y

echo "Installing terminator.."
sudo apt-get update
sudo apt-get install terminator

echo "Adding useful plugins"
# First check if folder exists and create otherwise
mkdir -p ~/.config/terminator/plugins
wget https://raw.githubusercontent.com/choffee/terminator-plugins/master/searchplugin.py -P ~/.config/terminator/plugins
