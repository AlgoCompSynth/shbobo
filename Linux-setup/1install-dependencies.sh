#! /usr/bin/env bash

set -e

echo "Defining logfile"
export LOGFILE="$PWD/1install-dependencies.log"

echo "Updating package cache"
export DEBIAN_FRONTEND=noninteractive
/usr/bin/time sudo apt-get update \
  >> $LOGFILE 2>&1

echo "Installing dependencies"
/usr/bin/time sudo apt-get install -y \
  binutils-arm-none-eabi \
  gcc-arm-none-eabi \
  build-essential \
  libasound2-dev \
  libxext-dev \
  libusb-1.0-0-dev \
  libx11-dev \
  openjdk-17-jdk-headless \
  stlink-tools \
  >> $LOGFILE 2>&1

echo "Installing SDL2 from source"
/usr/bin/time ./install-sdl2.sh \
  >> $LOGFILE 2>&1

echo "Finished"
