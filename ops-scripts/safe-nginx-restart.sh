#!/bin/bash

set -e

echo "Testing Nginx configuration..."

sudo nginx -t

echo "Configuration is valid."

echo "Reloading Nginx safely..."
sudo systemctl reload nginx

echo "Reload complete."

echo "Current Nginx status:"
sudo systemctl status nginx --no-pager
