#!/usr/bin/env bash

# Install version control
if ! brew ls --versions pyenv > /dev/null; then
  brew install pyenv
  echo '# pyenv config' >> ~/.zshrc
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi\n' >> ~/.zshrc
fi

pyenv install 3.6.3
pyenv global 3.6.3


