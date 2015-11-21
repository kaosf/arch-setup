cat <<EOF | sudo tee -a /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch
EOF
sudo pacman --noconfirm --sync --refresh yaourt

yaourt --noconfirm -Syua
yaourt --noconfirm -S git tmux tig
mkdir -p $HOME/local/bin
echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zprofile
