if ! type git; then
  echo "\"git\" isn't installed." >&2
  exit 1
fi
if [ -d /usr/local/src/vim ]; then
  echo "\"/usr/local/src/vim\" already exists." >&2
  exit 1
fi

sudo pacman --noconfirm -S git luajit

cd /tmp
# NOW=YYYYMMDDHHMMSS
NOW=`date +%Y%m%d%H%M%S`
git clone https://github.com/vim/vim vim-$NOW
cd vim-$NOW

# git checkout the latest tag
VERSION=`git tag -l | grep -E 'v[1-9][0-9]*.[1-9][0-9]*.[1-9][0-9]*' | sort --version-sort | tail -1`
git checkout $VERSION

NAME=`git config user.name`
if [ $? != 0 -o -z $NAME ]; then
  NAME=`whoami`
fi
EMAIL=`git config user.email`
if [ $? != 0 -o -z $EMAIL ]; then
  EMAIL=${NAME}@`hostname`
fi

./configure \
  --with-compiledby="${NAME} <${EMAIL}>" \
  --enable-gui=gtk2 \
  --enable-perlinterp=yes \
  --enable-pythoninterp=yes \
  --enable-rubyinterp \
  --enable-luainterp=yes \
  --enable-multibyte \
  --enable-fail-if-missing \
  --with-features=huge \
  --with-x \
  --with-luajit \
  --with-ruby-command=/usr/bin/ruby

make
sudo make install

cd ..
sudo mv vim-$NOW /usr/local/src/vim

if [ ! -d $HOME/.vim/dein ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash -s $HOME/.vim/dein
fi
if [ ! -d $HOME/.vim/ka-vim-snippets ]; then
  git clone git://github.com/kaosf/ka-vim-snippets.git $HOME/.vim/ka-vim-snippets
fi
