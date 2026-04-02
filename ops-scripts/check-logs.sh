#!/bin/bash

set -e

echo "===== Nginx service status ====="
sudo systemctl status nginx --no-pager

echo
echo "===== Recent Nginx journal logs ====="
sudo journalctl -u nginx --no-pager -n 30

echo
echo "===== Nginx access log (last 20 lines) ====="
sudo tail -n 20 /var/log/nginx/access.log

echo
echo "===== Nginx error log (last 20 lines) ====="
sudo tail -n 20 /var/log/nginx/error.log
