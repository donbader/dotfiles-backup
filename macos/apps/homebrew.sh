#!/usr/bin/env bash

# Check for Homebrew installation
if [ -n command -v brew 1>/dev/null 2>&1 ]; then
  echo "Installing Homebrew..."

  # Install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew analytics off

# Update homebrew formaulaes
brew update

# Install some packages
brew install wget coreutils the_silver_searcher

# Install homebrew cask
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Install a new version of rsync
brew install homebrew/dupes/rsync

# install fonts
brew cask install font-hack-nerd-font
