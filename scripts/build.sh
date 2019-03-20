#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR/.."

cmake -DCMAKE_BUILD_TYPE=Release
make
cd -