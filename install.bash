#!/bin/bash

bash_alias_check() {
  grep ".mcfurry/bash_aliases.sh" ~/.bashrc
}

# cd to directory
cd /tmp/tools

echo "Creating directory for persisting files.."
mkdir -p ~/.mcfurry
echo "Copy bash_aliases file.."
cp bash_aliases.sh ~/.mcfurry/bash_aliases.sh

if [[ $(bash_alias_check) != *"bash_aliases.sh"* ]]; then
  echo "Adding to .bashrc"
  echo -e "\nsource ~/.mcfurry/bash_aliases.sh" >> ~/.bashrc
fi

echo "Installing aptitude packages.."
sudo apt-get update
sudo apt-get install -y $(grep -vE "^\s*#" /tmp/tools/packages.list  | tr "\n" " ")

echo "Installing additional packages.."
for file in /tmp/tools/install.d/*
do
	[ -e "$file" ] || continue  # File should exist
	source $file
done
