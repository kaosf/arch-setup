sudo pacman --noconfirm -S ruby

if cat $HOME/.bash_profile | grep GEM_HOME > /dev/null 2>&1; then
  echo '# $GEM_HOME and $PATH are already set.'
else
  echo 'export GEM_HOME=$HOME/.gem'                 >> $HOME/.zshenv
  echo 'export PATH=$GEM_HOME/ruby/2.2.0/bin:$PATH' >> $HOME/.zshenv
  echo 'export GEM_HOME=$HOME/.gem'                 >> $HOME/.zprofile
  echo 'export PATH=$GEM_HOME/ruby/2.2.0/bin:$PATH' >> $HOME/.zprofile
  echo 'export GEM_HOME=$HOME/.gem'                 >> $HOME/.bash_profile
  echo 'export PATH=$GEM_HOME/ruby/2.2.0/bin:$PATH' >> $HOME/.bash_profile
fi
