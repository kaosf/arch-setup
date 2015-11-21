if cat /etc/pacman.conf | grep archlinuxfr > /dev/null 2>&1; then
  echo '# Configurations for yaourt is OK'
else
  cat <<EOF | sudo tee -a /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch
EOF
  sudo pacman --noconfirm --sync --refresh yaourt
fi

yaourt --noconfirm -Syua
yaourt --noconfirm -S git tmux tig

mkdir -p $HOME/local/bin
if echo $PATH | grep "$HOME/local/bin" > /dev/null 2>&1; then
  echo '# Local PATH is OK'
else
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zprofile
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zshenv
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.profile
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.bash_profile
fi
