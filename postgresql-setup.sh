sudo pacman -S postgresql

sudo -i -u postgres
initdb --locale en_US.UTF-8 -E UTF8 -D '/var/lib/postgres/data'
exit

sudo systemctl start postgresql.service

# "<YOUR_USERNAME>" must be modified to your real user name.
# (the result of "whoami" command output)
sudo -i -u postgres
createuser <YOUR_USERNAME> -d -l
exit
