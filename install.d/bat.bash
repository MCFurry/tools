#!/bin/bash

# Find out latest bat release
# Thanks to: https://github.com/lukechilds
get_bat_latest_release() {
  curl --silent "https://api.github.com/repos/sharkdp/bat/releases/latest" |
  grep '"tag_name":' |
  sed -E 's/.*"([^"]+)".*/\1/' |
  sed 's/^.//'
}

VER=$(get_bat_latest_release)

wget https://github.com/sharkdp/bat/releases/download/v${VER}/bat_${VER}_amd64.deb
sudo dpkg --install bat_${VER}_amd64.deb
rm bat_${VER}_amd64.deb
