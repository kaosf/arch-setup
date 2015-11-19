# ref. http://unix.stackexchange.com/questions/37922/how-to-prevent-the-auto-creation-of-the-desktop-folder
cat <<EOF > $HOME/.config/user-dirs.dirs
XDG_DESKTOP_DIR="\$HOME/"
EOF
