#!/bin/bash

set -e

mkdir src

curl --output sqlite-x86.zip http://www.sqlite.org/${YEAR}/sqlite-dll-win32-x86-${VERSION}.zip
unzip sqlite-x86.zip -d src
