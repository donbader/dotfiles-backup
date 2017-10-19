#!/usr/bin/env bash

brew cask install slate
ln -sf "$(pwd)/$(dirname $0)/slate/slate.symlink" ~/.slate



