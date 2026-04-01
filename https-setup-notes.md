# HTTPS Setup Notes

## Hostname
- first-project.34.238.244.58.sslip.io

## Certificate tooling
- certbot
- python3-certbot-nginx

## Main command used
- sudo certbot --nginx -d first-project.34.238.244.58.sslip.io

## Validation method
- HTTP-01 challenge over port 80

## Expected final state
- HTTPS enabled on port 443
- HTTP redirects to HTTPS
- Nginx configured with Let's Encrypt certificate paths
- Automatic renewal tested with certbot renew --dry-run

## Notes
Phase 7 enabled TLS for the project hostname using Let's Encrypt and Certbot with the Nginx plugin.
