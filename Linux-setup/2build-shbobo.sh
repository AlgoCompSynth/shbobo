#! /usr/bin/env bash

set -e

echo "Defining logfile"
export LOGFILE="$PWD/2build-shbobo.log"

pushd ../sorce
make \
  >> $LOGFILE 2>&1
popd

echo "Finished"
