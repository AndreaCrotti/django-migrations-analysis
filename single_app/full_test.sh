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
