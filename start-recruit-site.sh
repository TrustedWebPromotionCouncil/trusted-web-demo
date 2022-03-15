#!/bin/bash

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


cd recruit-site/
source .env && yarn install && yarn build && yarn serve
cd ..
