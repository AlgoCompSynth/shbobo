#! /usr/bin/env bash

set -e

# https://wiki.libsdl.org/SDL2/Installation#linuxunix
pushd /tmp
rm -fr SDL*
git clone https://github.com/libsdl-org/SDL.git -b SDL2
cd SDL
mkdir build
cd build
../configure
make
sudo make install
popd
