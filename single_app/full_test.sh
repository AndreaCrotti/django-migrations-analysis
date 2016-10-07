#!/usr/bin/env bash

DEFAULT_DB="db.sqlite3"

echo "clean the db"

rm $DEFAULT_DB

echo "record SQL from RunPython"
./manage.py dump_run_python
./manage.py make_raw_migrations

echo "Clean db again"

rm $DEFAULT_DB
./manage.py migrate_raw

# TODO: run a normal migrate after this and check that the result is
# exactly the same in both cases
sqlite3 $DEFAULT_DB .dump > generated.sql

rm $DEFAULT_DB
./manage.py migrate

sqlite3 $DEFAULT_DB .dump > official.sql

echo "Generating diff between two schemas"

# TODO: can I sort somewhow in a way that makes it easy to compare what is going on?
diff generated.sql official.sql > schema_differences.diff
