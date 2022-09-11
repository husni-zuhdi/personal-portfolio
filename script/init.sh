#!/usr/bin/env bash
# Declare your VM username
export USER_NAME=husninaufalz

# Create folder for log and run gunicorn and set ownership and group
sudo mkdir -pv /var/{log,run}/gunicorn/
sudo chown -cR $USER_NAME:ubuntu /var/{log,run}/gunicorn/
