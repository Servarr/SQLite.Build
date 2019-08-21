#!/bin/bash

set -e

source get_sqlite.sh
cd src

nmake //f makefile.msc
file sqlite3.dll
dumpbin //EXPORTS sqlite3.dll
