#!/bin/bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
. ~/.nvm/nvm.sh

nvm install 6
cd /fm

rm -rf ./node_modules
rm -rf ./app/node_modules

nvm ls

node -v
npm -v

npm install

tar -cvzf ./dist/fontmanager-1.6.11-linux-ia32.tar.gz -C ./app/node_modules/font-manager/build/Release fontmanager.node

