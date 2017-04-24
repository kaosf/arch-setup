cat <<'EOF' | sudo tee -a /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
EOF
sudo pacman --sync --refresh yaourt
# ref. https://wiki.archlinuxjp.org/index.php/Yaourt
