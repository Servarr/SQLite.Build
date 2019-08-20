#!/bin/bash

set -e

source get_sqlite.sh
cd src

cl sqlite3.c -link -dll -out:sqlite3.dll
file sqlite3.dll
dumpbin //EXPORTS sqlite3.dll
