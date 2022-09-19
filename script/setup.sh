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
export USER_NAME=$(whoami)

# Create folder for log gunicorn and set ownership and group
sudo mkdir -pv /var/log/gunicorn/
sudo chown -cR $USER_NAME:ubuntu /var/log/gunicorn/

# Create static folder and set ownership and group
sudo mkdir -pv /var/www/husni-portofolio.xyz/static
sudo chown -cR $USER_NAME:ubuntu /var/www/husni-portofolio.xyz/static

# Log as super user
sudo su -

# Copy nginx config file and create symlink in sites-enabled
cp config/nginx/personalportfolio /etc/nginx/sites-available/personalportfolio
ln -s /etc/nginx/sites-available/personalportfolio /etc/nginx/sites-enabled/personalportfolio

# Move default site to temp sites
mkdir /etc/nginx/sites-available-backup
rm /etc/nginx/sites-enabled/default
mv /etc/nginx/sites-available-backup/default /etc/nginx/sites-available/default

# Spin up nginx
systemctl start nginx
systemctl enable nginx

# Exit super user
exit