#!/bin/bash

set -e

YEAR=2019
VERSION=3300100

mkdir src

curl --output sqlite-x86.zip http://www.sqlite.org/${YEAR}/sqlite-dll-win32-x86-${VERSION}.zip
unzip sqlite-x86.zip -d src/win-x86

curl --output sqlite-x64.zip http://www.sqlite.org/${YEAR}/sqlite-dll-win64-x64-${VERSION}.zip
unzip sqlite-x64.zip -d src/win-x64
