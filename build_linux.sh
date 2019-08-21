#!/bin/bash

set -e

source get_sqlite.sh
cd src
gcc -v -O2 -c -fPIC ${SQLITE_OPTIONS} sqlite3.c
gcc -v -shared -o libsqlite3.so -fPIC sqlite3.o -ldl -lpthread
