#!/bin/bash

set -e

mkdir src

curl --output sqlite-x64.zip http://www.sqlite.org/${YEAR}/sqlite-dll-win64-x64-${VERSION}.zip
unzip sqlite-x64.zip -d src
