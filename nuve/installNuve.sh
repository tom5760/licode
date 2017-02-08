#!/usr/bin/env bash

set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
PATHNAME=`dirname $SCRIPT`
ROOT=$PATHNAME/..
BUILD_DIR=$ROOT/build
CURRENT_DIR=`pwd`
DB_DIR="$BUILD_DIR"/db

cd $PATHNAME

cd nuveAPI

cd ../nuveClient/tools

./compile.sh

echo [nuve] Done, nuve.js compiled

cd $CURRENT_DIR
