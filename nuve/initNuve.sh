#!/usr/bin/env bash

set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
PATHNAME=`dirname $SCRIPT`
ROOT=$PATHNAME/..
CURRENT_DIR=`pwd`

cd $PATHNAME/nuveAPI

nodejs nuve.js &

cd $CURRENT_DIR
