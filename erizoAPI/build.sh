#!/usr/bin/env bash

set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
PATHNAME=`dirname $SCRIPT`
ROOT=$PATHNAME/..
CURRENT_DIR=`pwd`

echo 'linting with cpplint'
./lint.sh

echo 'building with node-gyp $(which node-gyp)'
node-gyp rebuild
