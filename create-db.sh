#!/bin/bash -e

MDB=prism.mdb
SQLITE=prism.sqlite3
SCHEMA=prism-schema.sql

mdb-schema "$MDB" sqlite > "$SCHEMA"
sqlite3 "$SQLITE" < "$SCHEMA"

# Import tables
for TABLE in `mdb-tables "$MDB"`; do
    echo "Importing table: $TABLE ..."
    mdb-export -I sqlite "$MDB" "$TABLE" | sqlite3 "$SQLITE" -bail -batch    
done

echo "Done."
