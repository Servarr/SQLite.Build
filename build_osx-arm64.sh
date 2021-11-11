#!/bin/bash

set -e

source get_sqlite.sh
cd src

export MACOSX_DEPLOYMENT_TARGET=11.0
clang -v -arch arm64 -O2 -shared -o libsqlite3.dylib ${SQLITE_OPTIONS} sqlite3.c

file libsqlite3.dylib
otool -l libsqlite3.dylib
otool -L libsqlite3.dylib
