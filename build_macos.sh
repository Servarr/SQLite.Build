#!/bin/bash

set -e

source get_source.sh
cd src
gcc -v -O2 -dynamiclib -o libsqlite3.dylib ${SQLITE_OPTIONS} sqlite3.c
