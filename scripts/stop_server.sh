#!/bin/bash

# Stop the HTTP server (Apache)
echo "Stopping Apache server..."
systemctl stop httpd

# Check if the server stopped successfully
if systemctl status httpd | grep "inactive (dead)"; then
    echo "Apache server stopped successfully."
else
    echo "Failed to stop Apache server." >&2
    exit 1
fi
