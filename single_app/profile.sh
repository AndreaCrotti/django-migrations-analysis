#!/usr/bin/env bash

NAME=$1

./manage.py migrate all_models zero

time profile_python.py $NAME manage.py migrate
