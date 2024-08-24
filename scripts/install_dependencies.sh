#!/bin/bash

# Install necessary packages
echo "Installing necessary packages..."
yum update -y
yum install -y httpd

# Start the HTTP server (Apache)
echo "Starting Apache server..."
systemctl start httpd

# Enable the HTTP server to start on boot
echo "Enabling Apache to start on boot..."
systemctl enable httpd

# Install additional dependencies (e.g., Node.js, Python)
curl -sL https://rpm.nodesource.com/setup_14.x | bash -
yum install -y nodejs
yum install -y python3

# Install pip for Python 3
echo "Installing pip for Python 3..."
yum install -y python3-pip

# Upgrade pip
pip3 install --upgrade pip

# Install any Python dependencies
echo "Installing Python dependencies..."
pip3 install -r /var/www/html/requirements.txt

echo "Dependencies installed."
