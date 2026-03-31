# EC2 Launch Notes

## Instance
- Name: first-project-web-server
- Platform: AWS EC2
- OS: Ubuntu LTS
- Instance type: t3.micro

## Access
- Key pair: first-project-key
- SSH port: 22

## Networking
- VPC: default
- Public IP: enabled

## Security group
- Name: first-project-sg
- Inbound rules:
  - SSH (22) from My IP
  - HTTP (80) from Anywhere IPv4
  - HTTPS (443) from Anywhere IPv4

## Notes
This instance was launched as the first Linux server for the first-project DevOps portfolio build.
