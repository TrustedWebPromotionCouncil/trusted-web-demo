#!/bin/bash

cd recruit-site/
source .env && yarn build && yarn serve
cd ..