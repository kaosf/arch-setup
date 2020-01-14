yay -S mariadb

sudo su
#### root user operations
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mysqld
mysql_secure_installation
# Set root user password
systemctl restart mysqld
exit

# ref. https://wiki.archlinuxjp.org/index.php/MySQL
