#!/bin/bash

# Find out latest fzf release
# Thanks to: https://github.com/lukechilds
get_fzf_latest_release() {
  curl --silent "https://api.github.com/repos/junegunn/fzf-bin/releases/latest" |
  grep '"tag_name":' |
  sed -E 's/.*"([^"]+)".*/\1/'
}

wget https://github.com/junegunn/fzf-bin/releases/download/$(get_fzf_latest_release)/fzf-$(get_fzf_latest_release)-linux_amd64.tgz
tar -zxvf fzf-$(get_fzf_latest_release)-linux_amd64.tgz
sudo mv fzf /usr/local/bin/
rm fzf-$(get_fzf_latest_release)-linux_amd64.tgz
