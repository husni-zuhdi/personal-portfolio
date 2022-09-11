#!/usr/bin/env bash

# Install git nginx
sudo apt install git 'nginx1.18.*' -y

# Pull the repo
git pull https://github.com/Hazunanafaru/personal-portfolio.git

# Move to repo
cd ~/personal-portfolio/

# Install pipenv
pip install --user pipenv

# Install Dependencies
pipenv install

# Declare your VM username
export USER_NAME=husninaufalz

# Create folder for log and run gunicorn and set ownership and group
sudo mkdir -pv /var/{log,run}/gunicorn/
sudo chown -cR $USER_NAME:ubuntu /var/{log,run}/gunicorn/

# Create static folder and set ownership and group
sudo mkdir -pv /var/www/husni-portofolio.xyz/static
sudo chown -cR $USER_NAME:ubuntu /var/www/husni-portofolio.xyz/static

# Log as super user
sudo su -

# Copy nginx config file and create symlink in sites-enabled
cp config/nginx/personalportfolio /etc/nginx/sites-available/personalportfolio
ln -s /etc/nginx/sites-available/personalportfolio /etc/nginx/sites-enabled/personalportfolio

# Spin up nginx
systemctl start nginx
systemctl enable nginx

# Exit super user
exit

# Start gunicorn
pipenv run gunicorn -c config/gunicorn/dev.py