sudo pacman --noconfirm -S git vim
if [ ! -d $HOME/.vim/dein ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash -s $HOME/.vim/dein
fi
if [ ! -d $HOME/.vim/ka-vim-snippets ]; then
  git clone git://github.com/kaosf/ka-vim-snippets.git $HOME/.vim/ka-vim-snippets
fi
