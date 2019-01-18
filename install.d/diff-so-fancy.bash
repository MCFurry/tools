#!/bin/bash

curl -O https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
chmod +x diff-so-fancy
sudo mv diff-so-fancy /usr/local/bin/

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
