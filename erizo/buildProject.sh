#!/usr/bin/env bash

set -e

BIN_DIR="build"

if [ ! -d "$BIN_DIR" ]
then
  echo "Error, build directory does not exist, run generateProject.sh first"
  exit 1
fi

cd "$BIN_DIR"
make
