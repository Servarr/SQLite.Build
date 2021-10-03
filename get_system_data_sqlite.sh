#!/bin/bash

VERSION=1.0.115.0

mkdir net
cd net
curl --output system.data.sqlite.zip "https://system.data.sqlite.org/blobs/${VERSION}/sqlite-netFx-source-${VERSION}.zip"
unzip system.data.sqlite.zip
