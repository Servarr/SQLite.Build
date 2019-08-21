#!/bin/bash

set -e

YEAR=2019
VERSION=3280000
curl --output sqlite.zip http://www.sqlite.org/${YEAR}/sqlite-dll-win32-x86-${VERSION}.zip
unzip sqlite.zip -d src
