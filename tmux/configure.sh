#!/usr/bin/env bash

ln -sf "`pwd`/$(dirname $0)/tmux.conf.symlink" ~/.tmux.conf
