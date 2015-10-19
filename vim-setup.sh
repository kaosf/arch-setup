sudo pacman --noconfirm -S git vim
[ -d $HOME/.vim/bundle ] || mkdir -p $HOME/.vim/bundle
if [ ! -d $HOME/.vim/bundle/neobundle.vim ]; then
  git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi
if [ ! -d $HOME/.vim/ka-vim-snippets ]; then
  git clone git://github.com/kaosf/ka-vim-snippets.git $HOME/.vim/ka-vim-snippets
fi
