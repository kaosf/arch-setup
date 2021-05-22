VERSION=v0.5.8
wget https://github.com/peco/peco/releases/download/$VERSION/peco_linux_amd64.tar.gz
tar xf peco_linux_amd64.tar.gz
sudo cp peco_linux_amd64/peco /usr/local/bin
rm -f peco_linux_amd64.tar.gz
rm -rf peco_linux_amd64/
