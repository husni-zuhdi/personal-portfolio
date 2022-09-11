#!/usr/bin/env bash
sudo mkdir -pv /var/{log,run}/gunicorn/
sudo chown -cR ubuntu:ubuntu /var/{log,run}/gunicorn/
