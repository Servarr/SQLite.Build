#!/bin/bash

set -e

mkdir net
cd net

echo "$URL"
curl --output system.data.sqlite.zip "https://system.data.sqlite.org/blobs/$1/sqlite-netFx-source-$1.zip"
unzip system.data.sqlite.zip

dos2unix System.Data.SQLite/System.Data.SQLite.2015.csproj
dos2unix System.Data.SQLite/UnsafeNativeMethods.cs
cd ..
patch -p0 < patches/System.Data.SQLite/0001_osx-arm64_support.patch
