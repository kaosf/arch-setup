# ref. https://itsfoss.com/best-aur-helpers
git clone https://aur.archlinux.org/yay.git
cd yay
sudo pacman -S make # Only it is required.
makepkg -si

yay -S git tig

mkdir -p $HOME/local/bin
if echo $PATH | grep "$HOME/local/bin" > /dev/null 2>&1; then
  echo '# Local PATH is OK'
else
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zprofile
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.zshenv
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.profile
  echo 'export PATH=$HOME/local/bin:$PATH' >> $HOME/.bash_profile
fi

# ref. https://turtlechan.hatenablog.com/entry/2019/08/25/194849
sudo pacman-mirrors --fasttrack && sudo pacman -Syy
# It updates /etc/pacman.d/mirrorlist
