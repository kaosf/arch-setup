yaourt -S rbenv ruby-build
mkdir -p $HOME/.rbenv/plugins
git clone https://github.com/ianheggie/rbenv-binstubs.git $HOME/.rbenv/plugins/rbenv-binstubs
echo 'eval "$(rbenv init -)"' >> ~/.zprofile
echo 'eval "$(rbenv init -)"' >> ~/.zshenv
echo 'eval "$(rbenv init -)"' >> ~/.profile
exec $SHELL

# rbenv install 1.9.3-p551
# rbenv local 1.9.3-p551
# gem install bundler

# ref.
#   https://wiki.archlinux.org/index.php/Ruby
#   https://wiki.archlinux.org/index.php/Rbenv
