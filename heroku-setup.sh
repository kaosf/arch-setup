wget -O- https://toolbelt.heroku.com/install.sh | sh
L=$HOME/local/bin/hk && curl -sL -A "`uname -sp`" https://hk.heroku.com/hk.gz | zcat >$L && chmod +x $L
