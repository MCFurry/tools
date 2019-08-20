#!/bin/bash

bash_alias_check() {
  grep "~/.my_bash_aliases.sh" ~/.bashrc
}

# cd to directory
cd /tmp/tools

echo "Copy bash_aliases file.."
yes | cp -rf my_bash_aliases.sh ~/.my_bash_aliases.sh

if [[ $(bash_alias_check) != *".my_bash_aliases.sh"* ]]; then
  echo "Adding to .bashrc"
  echo -e "\nsource ~/.my_bash_aliases.sh" >> ~/.bashrc
fi

echo "Installing aptitude packages.."
sudo apt update
sudo apt install -y $(grep -vE "^\s*#" /tmp/tools/packages.list  | tr "\n" " ")

echo "Installing additional packages.."
for file in /tmp/tools/install.d/*
do
	[ -e "$file" ] || continue  # File should exist
	source $file
done
