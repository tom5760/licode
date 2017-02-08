#!/usr/bin/env bash

set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
ROOT=`dirname $SCRIPT`
LICODE_ROOT="$ROOT"/..
CURRENT_DIR=`pwd`

cd ../erizo_controller/erizoClient/tools

if [ ! -f "../dist/erizofc.js" ]
then
  ./compilefc.sh
fi

cp ../dist/erizofc.js ../../../spine/

echo [spine] Done, erizofc.js compiled
