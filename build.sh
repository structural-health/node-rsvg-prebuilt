#!/usr/bin/env bash
apt-get update
apt-get install -y librsvg2-dev curl build-essential wget
wget "https://github.com/GNOME/librsvg/archive/2.40.16.tar.gz" -O librsvg.tar.gz
tar -xvzf librsvg.tar.gz
cd librsvg-2.40.16
apt-get install -y gcc make rustc cargo automake autoconf libtool gettext itstool libgdk-pixbuf2.0-dev libgirepository1.0-dev gtk-doc-tools git libgtk-3-dev libxml2-dev libcroco3-dev libcairo2-dev libpango1.0-dev
./autogen.sh
make
make install
# node stuff
if [[ $1 == "i386" ]]
then
    # for i386 architectures we need to build node by ourself, since nodejs does not publish i386 binaries anymore
    # starting with release 10.x
    cd /tmp
    git clone https://github.com/nodejs/node.git
    cd node
    git checkout v10.x
    ./configure
    make
    make install
else
# for x64 everything is fine
    curl -sL https://deb.nodesource.com/setup_10.x | bash -
    apt-get install -y nodejs
fi
nodejs --version
npm --version
npm install -g prebuild
cd /MyProgram
npm install
npm run prebuild
# evil stuff
chmod -R 777 ./prebuilds