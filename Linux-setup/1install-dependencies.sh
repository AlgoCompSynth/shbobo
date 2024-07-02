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
  libstdc++-arm-none-eabi-dev \
  build-essential \
  libasound2-dev \
  libsdl2-dev \
  libusb-1.0-0-dev \
  libx11-dev \
  openjdk-17-jdk-headless \
  >> $LOGFILE 2>&1

echo "Finished"
