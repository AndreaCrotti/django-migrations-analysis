#!/usr/bin/env bash

./manage.py migrate all_models zero

profile_python.py manage.py migrate
