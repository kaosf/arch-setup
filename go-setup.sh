sudo pacman --noconfirm -S go
mkdir -p ~/.go
echo 'export GOROOT=$HOME/.go'             >> $HOME/.bash_profile
echo 'export PATH=$GOROOT/bin:$PATH'       >> $HOME/.bash_profile
echo 'export GOPATH=$HOME/.gocode'         >> $HOME/.zprofile
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.zprofile
exec $SHELL
go get github.com/peco/peco/cmd/peco
