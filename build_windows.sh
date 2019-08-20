#!/bin/bash

set -e

source get_source.sh

C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Enterprise\\Common7\\Tools\\VsDevCmd.bat
cd src

SQLITE_OPTIONS_WIN=${SQLITE_OPTIONS//-/\/}
cl ${SQLITE_OPTIONS} sqlite3.c -link -dll -out:sqlite3.dll
file sqlite3.dll
