# Nginx Setup Notes

## Installation
- Installed nginx using apt
- Verified nginx service status
- Confirmed nginx is enabled at boot

## Testing
- Tested locally with curl http://localhost
- Tested externally with the EC2 public IP over HTTP

## Content update
- Replaced default nginx page with a custom project page

## Useful commands
- sudo systemctl status nginx --no-pager
- sudo systemctl enable nginx
- sudo nginx -t
- sudo systemctl reload nginx
- curl http://localhost

## Notes
Phase 5 turned the EC2 instance into a working HTTP web server using nginx.
