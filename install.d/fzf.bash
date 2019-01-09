#!/bin/bash

# Find out latest fzf release
# Thanks to: https://github.com/lukechilds
get_fzf_latest_release() {
  curl --silent "https://api.github.com/repos/junegunn/fzf-bin/releases/latest" |
  grep '"tag_name":' |
  sed -E 's/.*"([^"]+)".*/\1/'
}

VER=$(get_fzf_latest_release)

wget https://github.com/junegunn/fzf-bin/releases/download/${VER}/fzf-${VER}-linux_amd64.tgz
tar -zxvf fzf-${VER}-linux_amd64.tgz
sudo mv fzf /usr/local/bin/
rm fzf-${VER}-linux_amd64.tgz
