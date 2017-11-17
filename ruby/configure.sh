\curl -sSL https://get.rvm.io | bash -s stable
echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && . \"$HOME/.rvm/scripts/rvm\"" >> ~/.zshrc 
echo "source $HOME/.rvm/scripts/rvm" >> ~/.zshrc

rvm install 2.3.3

sudo gem install rails
