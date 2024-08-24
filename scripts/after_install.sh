#!/bin/bash

# Change ownership and permissions of the deployed files
echo "Setting ownership and permissions..."
chown -R apache:apache /var/www/html/
chmod -R 777 /var/www/html/

echo "After install tasks completed."
