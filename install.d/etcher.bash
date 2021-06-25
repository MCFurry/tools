#!/bin/bash

# Find out latest bat release
# Thanks to: https://github.com/lukechilds
get_etcher_latest_release() {
  curl --silent "https://api.github.com/repos/balena-io/etcher/releases/latest" |
  grep '"tag_name":' |
  sed -E 's/.*"([^"]+)".*/\1/' |
  sed 's/^.//'
}

VER=$(get_etcher_latest_release)

wget https://github.com/balena-io/etcher/releases/download/v${VER}/balena-etcher-electron_${VER}_amd64.deb
sudo dpkg --install balena-etcher-electron_${VER}_amd64.deb
rm balena-etcher-electron_${VER}_amd64.deb