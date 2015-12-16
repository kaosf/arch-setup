yaourt -S postgresql

USERNAME=`whoami`

sudo -i -u postgres
initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'
postgres -c "createuser ${USERNAME} -d -l"
exit

sudo systemctl start postgresql
