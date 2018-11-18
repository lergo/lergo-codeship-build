#!/bin/bash
set -e
echo build lergo-ui
cd lergo-ui
source ~/.nvm/nvm.sh
nvm install
npm install
./node_modules/.bin/bower --allow-root --config.interactive=false install
