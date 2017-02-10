#!/usr/bin/env bash

set -e

mkdir ../dist || true
mkdir ../build || true

closure-compiler \
  --js_output_file ../build/nuve.js \
  --js ../src/hmac-sha1.js \
  --js ../src/N.js \
  --js ../src/N.Base64.js \
  --js ../src/N.API.js

./compileDist.sh
