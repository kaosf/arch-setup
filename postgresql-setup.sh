yaourt -S postgresql

sudo -i -u postgres
initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'
exit

sudo systemctl start postgresql
