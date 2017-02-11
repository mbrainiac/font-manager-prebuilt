#!/bin/sh

node ./node_modules/electron-builder/out/cli/install-app-deps.js
tar -cvzf ./dist/fontmanager-$APP_VERSION-$TRAVIS_OS_NAME-x64.tar.gz -C ./app/node_modules/font-manager/build/Release fontmanager.node

rm -rf ./app/node_modules

node ./node_modules/electron-builder/out/cli/install-app-deps.js --arch=ia32
tar -cvzf ./dist/fontmanager-$APP_VERSION-$TRAVIS_OS_NAME-ia32.tar.gz -C ./app/node_modules/font-manager/build/Release fontmanager.node


