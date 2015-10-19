sudo pacman --noconfirm -S git tmux tig
mkdir -p $HOME/local/bin
echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zprofile
