#! /usr/bin/env bash

set -e

sudo cp shnth.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger

echo "Finished"
