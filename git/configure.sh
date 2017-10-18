#!/bin/bash

# Install latest version of git
if ! brew ls --versions git > /dev/null; then
    brew install git
else
    brew upgrade git
fi

# Get full name of the OSX user (cheers @juandebravo!)
username=`whoami`
default_git_name="`finger $USER | head -n1 | cut -d ":" -f 3 | cut -c 2-`"

# Ask for credentials
read -p "Enter your git full name ($default_git_name): " git_name
read -p "Enter your git email: " git_email

git_name=${git_name:-$default_git_name}

echo "[user]" > ~/.gitconfig.credentials
echo "    name = $git_name" >> ~/.gitconfig.credentials
echo "    email = $git_email" >> ~/.gitconfig.credentials

ln -sf "`pwd`/$(dirname $0)/gitconfig.symlink" ~/.gitconfig
ln -sf "`pwd`/$(dirname $0)/gitignore.symlink" ~/.gitignore
