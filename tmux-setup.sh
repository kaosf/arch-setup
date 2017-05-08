VERSION=2.3

#sudo pacman --noconfirm -S ????

wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xzf tmux-${VERSION}.tar.gz
mkdir -p $HOME/local
cd tmux-${VERSION}
./configure --prefix=$HOME/local
make
make install
