sudo pacman --noconfirm -S git neovim gvim python

if [ ! -d $HOME/.vim/ka-vim-snippets ]; then
  mkdir -p $HOME/.vim
  git clone git://github.com/kaosf/ka-vim-snippets.git $HOME/.vim/ka-vim-snippets
fi

# Install Python 3 "neovim" package
pip install --user neovim
