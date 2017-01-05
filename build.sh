#!/bin/bash
node-gyp rebuild --target=7.4.0
cd build
tar -zcvf librsvg-v0.7.0-nnode-v51-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v51-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=6.9.3
cd build
tar -zcvf librsvg-v0.7.0-nnode-v48-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v48-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=5.0.0
cd build
tar -zcvf librsvg-v0.7.0-nnode-v47-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v47-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=4.0.0
cd build
tar -zcvf librsvg-v0.7.0-nnode-v46-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v46-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=3.0.0
cd build
tar -zcvf librsvg-v0.7.0-nnode-v45-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v45-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=2.0.0
cd build
tar -zcvf librsvg-v0.7.0-nnode-v44-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v44-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=1.8.4
cd build
tar -zcvf librsvg-v0.7.0-nnode-v43-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v43-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=1.0.4
cd build
tar -zcvf librsvg-v0.7.0-nnode-v42-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v42-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=0.12.18
cd build
tar -zcvf librsvg-v0.7.0-nnode-v14-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v14-linux-x64.tar.gz ../
cd ..

node-gyp rebuild --target=0.10.48
cd build
tar -zcvf librsvg-v0.7.0-nnode-v11-linux-x64.tar.gz Release
cp librsvg-v0.7.0-nnode-v11-linux-x64.tar.gz ../
cd ..

