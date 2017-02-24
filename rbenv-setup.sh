# The case of using rbenv
sudo pacman --noconfirm -S rbenv ruby-build
# Remove GEM_HOME and add "unset GEM_HOME" until next reboot.
echo 'eval "$(rbenv init -)"' >> $HOME/.zshenv
echo 'eval "$(rbenv init -)"' >> $HOME/.zprofile
echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile

# rbenv install 2.3.3
# rbenv local 2.3.3
# gem install bundler
# rbenv rehash

# ref.
#   https://wiki.archlinux.org/index.php/Ruby
#   https://wiki.archlinux.org/index.php/Rbenv
