sudo pacman --noconfirm -S go
mkdir -p ~/.go
export GOPATH=$HOME/.gocode
export PATH=$HOME/.gocode/bin:$PATH
echo 'export GOPATH=$HOME/.gocode'         >> $HOME/.zprofile
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.zprofile
echo 'export GOPATH=$HOME/.gocode'         >> $HOME/.zshenv
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.zshenv
echo 'export GOPATH=$HOME/.gocode'         >> $HOME/.bash_profile
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.bash_profile
go get github.com/peco/peco/cmd/peco
