# ref. https://github.com/syndbg/goenv

git clone https://github.com/syndbg/goenv.git ~/.goenv

#echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bash_profile
#echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zprofile
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.zprofile
#echo 'eval "$(goenv init -)"' >> ~/.bash_profile
echo 'eval "$(goenv init -)"' >> ~/.zprofile

mkdir -p ~/.golang
#echo 'export GOPATH=$HOME/.golang' >> ~/.bash_profile
echo 'export GOPATH=$HOME/.golang' >> ~/.zprofile

#source ~/.bash_profile
source ~/.zprofile

goenv install 1.10.0
goenv global 1.10.0

# Uninstall
#rm -rf `goenv root`
