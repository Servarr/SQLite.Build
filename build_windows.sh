#!/bin/bash

source get_source.sh
cd src
gcc -v -O2 -m32 ${SQLITE_OPTIONS} -shared sqlite3.c -o sqlite3.dll
file sqlite3.dll
