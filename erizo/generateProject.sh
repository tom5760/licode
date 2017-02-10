#!/usr/bin/env bash

set -e

BIN_DIR="build"

if [ ! -d "$BIN_DIR" ]
then
  mkdir -p "$BIN_DIR"
fi

cd "$BIN_DIR"
cmake ../src

echo "Done"
