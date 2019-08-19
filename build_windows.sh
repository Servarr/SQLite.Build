#!/bin/bash

source get_source.sh
cd src
gcc -v -O2 ${SQLITE_OPTIONS} -shared sqlite3.c -o sqlite3.dll
