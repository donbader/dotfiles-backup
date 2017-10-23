#!/usr/bin/env bash

# install tmux if there is none
if [ -n command -v tmux 1>/dev/null 2>&1; ] then
  brew install tmux
else
  brew upgrade tmux
fi

ln -sf "`pwd`/$(dirname $0)/tmux.conf.symlink" ~/.tmux.conf
