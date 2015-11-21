# yaourt -S mariadb
sudo pacman -S mariadb

sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
sudo mysql_secure_installation
# Set root user password
sudo systemctl restart mysqld

# ref. https://wiki.archlinuxjp.org/index.php/MySQL
