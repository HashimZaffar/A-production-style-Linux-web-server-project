# Linux Hardening Notes

## Initial access
- Connected to EC2 using SSH with the AWS key pair
- Default Ubuntu username used for first login: ubuntu

## Initial system preparation
- Ran apt update
- Ran apt upgrade -y
- Ran apt autoremove -y

## Admin user setup
- Created admin user: devopsadmin
- Added user to sudo group
- Copied authorized_keys for SSH access

## SSH hardening
- Set PermitRootLogin no
- Set PasswordAuthentication no
- Confirmed PubkeyAuthentication yes
- Validated sshd config before restart
- Restarted ssh service and tested login again

## Notes
This phase established safer administrative access and reduced reliance on default settings.
