if [ ! -d /usr/local/src/vim ]; then
  echo "\"/usr/local/src/vim\" doesn't exist." >&2
  exit 1
fi

cd /usr/local/src/vim

# git checkout the latest tag
VERSION=`git tag -l | grep -E 'v[1-9][0-9]*.[1-9][0-9]*.[1-9][0-9]*' | sort --version-sort | tail -1`
git checkout $VERSION

make
sudo make install
