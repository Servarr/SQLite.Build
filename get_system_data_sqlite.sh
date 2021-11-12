#!/bin/bash

set -e

mkdir net
cd net

echo "$URL"
curl --output system.data.sqlite.zip "https://system.data.sqlite.org/blobs/$1/sqlite-netFx-source-$1.zip"
unzip system.data.sqlite.zip
