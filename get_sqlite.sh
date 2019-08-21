#!/bin/bash

set -e

YEAR=2019
VERSION=3280000
curl --output sqlite.tar.gz http://www.sqlite.org/${YEAR}/sqlite-autoconf-${VERSION}.tar.gz
file sqlite.tar.gz
mkdir src
tar -xvzf sqlite.tar.gz -C src
mv src/**/* src
