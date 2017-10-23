# Todo: Dependencies

brew install neovim
pip3 install --user --upgrade neovim
gem install neovim

mkdir -p ~/.config/nvim

# Link
ln -sf "`pwd`/$(dirname $0)/init.vim.symlink" ~/.config/nvim/init.vim

# Vim-plug
[ ! -f ~/.config/nvim/autoload/plug.vim ] \
  && curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


