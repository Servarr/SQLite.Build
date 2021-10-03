#!/bin/bash

set -e

YEAR=2021
VERSION=3360000
curl --output sqlite.zip http://www.sqlite.org/${YEAR}/sqlite-amalgamation-${VERSION}.zip
unzip sqlite.zip -d src
mv src/**/* src

SQLITE_OPTIONS="-DSQLITE_ENABLE_COLUMN_METADATA \
             -DSQLITE_ENABLE_DBSTAT_VTAB \
             -DSQLITE_ENABLE_FTS3 \
             -DSQLITE_ENABLE_FTS3_PARENTHESIS \
             -DSQLITE_ENABLE_FTS3_TOKENIZER \
             -DSQLITE_ENABLE_FTS4 \
             -DSQLITE_ENABLE_FTS5 \
             -DSQLITE_ENABLE_JSON1 \
             -DSQLITE_ENABLE_LOAD_EXTENSION \
             -DSQLITE_ENABLE_PREUPDATE_HOOK \
             -DSQLITE_ENABLE_RTREE \
             -DSQLITE_ENABLE_SESSION \
             -DSQLITE_ENABLE_STMTVTAB \
             -DSQLITE_ENABLE_UNKNOWN_SQL_FUNCTION \
             -DSQLITE_ENABLE_UNLOCK_NOTIFY \
             -DSQLITE_ENABLE_UPDATE_DELETE_LIMIT \
             -DSQLITE_HAVE_ISNAN \
             -DSQLITE_LIKE_DOESNT_MATCH_BLOBS \
             -DSQLITE_MAX_SCHEMA_RETRY=25 \
             -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
             -DSQLITE_OMIT_LOOKASIDE \
             -DSQLITE_SECURE_DELETE \
             -DSQLITE_SOUNDEX \
             -DSQLITE_THREADSAFE=1"
# echo $SQLITE_OPTIONS
