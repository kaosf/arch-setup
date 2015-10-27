if [ $# -lt 1 ]; then exit 1; fi
NAME=$1
pacman --noconfirm -Syy
pacman --noconfirm -S zsh
cp -r /etc/skel /home/$NAME
useradd $NAME -s /usr/bin/zsh
echo "${NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/${NAME}/.ssh
cp .ssh/authorized_keys /home/${NAME}/.ssh
chmod 600 /home/${NAME}/.ssh/authorized_keys
chown ${NAME}:${NAME} -R /home/${NAME}
sed 's/PermitRootLogin yes/PermitRootLogin no/' -i /etc/ssh/sshd_config
systemctl restart sshd
