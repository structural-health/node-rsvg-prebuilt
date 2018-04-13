#!/usr/bin/env bash
apt-get update
apt-get install -y librsvg2-dev curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
npm install
npm install -g prebuild
npm run prebuild