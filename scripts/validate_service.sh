#!/bin/bash

# Validate that the Apache server is running
echo "Validating Apache server status..."

if systemctl status httpd | grep "active (running)"; then
    echo "Apache server is running."
else
    echo "Apache server is not running." >&2
    exit 1
fi

# Validate that the application is accessible
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost/index.html)

if [ "$HTTP_CODE" -eq 200 ]; then
    echo "Application is accessible. Validation successful."
else
    echo "Application is not accessible. Validation failed with HTTP code: $HTTP_CODE" >&2
    exit 1
fi
