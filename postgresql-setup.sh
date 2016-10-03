yaourt -S postgresql

sudo -i -u postgres
initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'
sudo systemctl start postgresql
exit

USERNAME=`whoami`
sudo -i -u postgres
createuser ${USERNAME} -d -l
exit
