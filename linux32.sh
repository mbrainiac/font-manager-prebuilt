#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get install -y software-properties-common
apt-add-repository -y "ppa:ubuntu-toolchain-r/test"
apt-get -yq update
apt-get -yq --no-install-suggests --no-install-recommends --force-yes install libgnome-keyring-dev
apt-get install -y curl gcc make libfontconfig-dev


curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
. ~/.nvm/nvm.sh

nvm install 6
cd /fm

rm -rf ./node_modules
rm -rf ./app/node_modules

nvm ls

node -v
npm -v

npm install --unsafe-perm

tar -cvzf ./dist/fontmanager-1.4.14-linux-ia32.tar.gz -C ./app/node_modules/font-manager/build/Release fontmanager.node

