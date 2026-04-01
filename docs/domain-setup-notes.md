# Domain Setup Notes

## Hostname choice
Used sslip.io for DNS-based hostname access without purchasing a domain.

## Hostname format
- Pattern: first-project.<public-ip-with-dashes>.sslip.io

## Web root
- /var/www/first-project

## Nginx site config
- /etc/nginx/sites-available/first-project

## Main server_name
- first-project.<public-ip-with-dashes>.sslip.io

## Actions completed
- Created project web root
- Added custom index.html
- Created dedicated Nginx server block
- Enabled custom site
- Removed default enabled site
- Tested config with nginx -t
- Reloaded Nginx
- Verified browser access using sslip.io hostname

## Notes
This phase replaced raw IP access with hostname-based access and prepared the project for HTTPS.
