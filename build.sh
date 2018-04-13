#!/usr/bin/env bash
apt-get install librsvg2-dev
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install
npm install -g prebuild
npm run prebuild