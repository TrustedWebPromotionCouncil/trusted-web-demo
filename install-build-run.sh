#!/bin/bash
set -e

# nvm use 16
# compare two string lexicographically
NODE_VERSION=$(node --version)
if [ $NODE_VERSION \< "v16.0.0" ];
then
    echo "[TRUSTED WEB] [ERROR] Unsupported node.js version: $NODE_VERSION"
    echo "Use node >= 16"
    exit 1
else
    echo "[TRUSTED WEB] node.js version: $NODE_VERSION [supported]"
fi

echo "[TRUSTED WEB] ########## Installing npm packages... ##########"
cd trace-app && npm install && cd ..

# cd browser-extension && yarn install

# echo "[TRUSTED WEB] ########## Build WebExtension... ##########"
# (source .env && yarn build)

echo "[TRUSTED WEB] ########## Running trace app ... ##########"
echo "[TRUSTED WEB] Please run ./start-recruit-site.sh in another terminal."

cd trace-app
source .env && npm run serve
