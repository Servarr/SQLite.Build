#!/bin/bash

set -e

source get_sqlite.sh
cd src

nmake /f Makefile.msc sqlite3.dll
file sqlite3.dll
dumpbin //EXPORTS sqlite3.dll
