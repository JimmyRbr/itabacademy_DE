#!/bin/bash

# Start the HTTP server (Apache)
echo "Starting Apache server..."
systemctl start httpd

# Check if the server started successfully
if systemctl status httpd | grep "active (running)"; then
    echo "Apache server started successfully."
else
    echo "Failed to start Apache server." >&2
    exit 1
fi
