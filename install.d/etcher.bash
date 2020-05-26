#!/bin/bash

listfile="/etc/apt/sources.list.d/etcher.list"

if [ ! -f $listfile ]
then
    echo "Adding etcher ppa"

    # Required for adding https sources to apt
    sudo apt install --assume-yes apt-transport-https

    echo -e "deb https://deb.etcher.io stable etcher" | sudo tee $listfile

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
fi
    sudo apt update

    sudo apt install --assume-yes --allow-unauthenticated balena-etcher-electron
