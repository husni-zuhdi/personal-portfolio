#!/usr/bin/env bash

# Declare your VM username
export USER_NAME=$(whoami)

# Create folder for run gunicorn and set ownership and group
sudo mkdir -pv /var/run/gunicorn/
sudo chown -cR $USER_NAME:ubuntu /var/run/gunicorn/

# Start gunicorn
pipenv run gunicorn -c config/gunicorn/dev.py