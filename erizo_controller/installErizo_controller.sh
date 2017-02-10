#!/usr/bin/env bash
set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
ROOT=`dirname $SCRIPT`
LICODE_ROOT="$ROOT"/..
CURRENT_DIR=`pwd`

cd ./erizoClient/tools

./compile.sh
./compilefc.sh

echo [erizo_controller] Done, erizo.js compiled
