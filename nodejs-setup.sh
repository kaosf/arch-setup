# Install anyenv at first

anyenv install nodenv

# Install Yarn
# ref. https://github.com/pine/nodenv-yarn-install
mkdir -p "$(nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 10.16.3
nodenv install 12.11.1

# Otherwise...

sudo pacman -S nodejs npm yarn

# System wide Node.js switching
sudo npm i -g n
sudo n 10.16.3
sudo n 12.11.1
