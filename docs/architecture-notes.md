# Architecture Notes

## Simple flow
User Browser -> Public IP or Domain -> EC2 Instance -> Nginx -> Web Content

## Main components
- AWS EC2 instance for the Linux server
- Ubuntu as the operating system
- Security group as the network firewall
- SSH key pair for secure access
- Nginx as the web server and reverse proxy
- Optional domain or subdomain for public access
- Let's Encrypt for HTTPS certificates

## Learning focus
This project is designed to build skills in:
- Linux administration
- AWS basics
- SSH and server access
- Web server configuration
- DNS and HTTPS
- Bash scripting for day-one operations
