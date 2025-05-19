#!/bin/bash

# Update and install nginx
sudo apt update
sudo apt install -y nginx

# Copy HTML files
sudo cp -r ../html/* /var/www/html/

# Copy nginx config
sudo cp ../nginx-config/default.conf /etc/nginx/sites-available/default

# Restart nginx
sudo systemctl restart nginx

echo "Nginx is installed and running. Visit http://localhost"


