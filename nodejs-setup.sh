curl -L git.io/nodebrew | perl - setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zprofile
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshenv
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bash_profile
exec $SHELL
nodebrew install-binary 5.1.1
nodebrew use latest
