# first-project 🚀

A complete beginner-to-production style DevOps project that builds, secures, and operates a Linux web server on AWS.

---

## 📌 Project Overview

This project demonstrates how to take a server from **zero to production-ready** using real-world DevOps practices.

Starting from a clean Git repository, the project walks through launching an AWS EC2 instance, securing access, configuring a web server, enabling HTTPS, and adding operational automation using Bash scripts.

The goal was not just to deploy a server, but to show **practical understanding of infrastructure, security, and day-to-day operations**.

---

## 🧱 Architecture

User → Internet → EC2 (Ubuntu) → Nginx → Static Site

* Public access via `sslip.io`
* HTTPS enabled using Let’s Encrypt
* Nginx acting as the web server

---

## ⚙️ Tech Stack

* **Cloud:** AWS EC2
* **OS:** Ubuntu Linux
* **Web Server:** Nginx
* **Access:** SSH (key-based authentication)
* **DNS (temporary):** sslip.io
* **TLS/HTTPS:** Let’s Encrypt + Certbot
* **Automation:** Bash scripting
* **Service Management:** systemd

---

## 🌐 Live Access

* HTTP:
  http://first-project.34.238.244.58.sslip.io/

* HTTPS:
  https://first-project.34.238.244.58.sslip.io/

---

## 🛠️ Project Phases

### Phase 1 — Project Setup

* Created project structure
* Initialized Git repository
* Added `.gitignore` and README

### Phase 2 — AWS Planning

* Selected region and instance type
* Designed architecture
* Planned security and networking

### Phase 3 — EC2 Launch

* Created key pair
* Launched Ubuntu EC2 instance
* Configured security group (SSH, HTTP, HTTPS)

### Phase 4 — Linux Hardening

* Connected via SSH
* Created admin user (`devopsadmin`)
* Disabled password-based authentication
* Secured SSH access

### Phase 5 — Nginx Setup

* Installed Nginx
* Verified service and ports
* Served custom HTML page

### Phase 6 — Domain Setup (sslip.io)

* Replaced raw IP with hostname
* Configured Nginx server block
* Enabled hostname-based routing

### Phase 7 — HTTPS Enablement

* Installed Certbot
* Issued TLS certificate
* Enabled HTTPS
* Configured HTTP → HTTPS redirect
* Verified certificate renewal

### Phase 8 — Operations Scripts

Created reusable Bash scripts for:

* Health checks
* Backups
* Log inspection
* Safe Nginx reloads
* Log rotation
* Combined operations runner

### Phase 9 — Finalization

* Performed full system validation
* Cleaned project structure
* Added documentation
* Prepared for GitHub and interviews

---

## 📁 Project Structure

```
first-project/
├── README.md
├── configs/
├── docs/
│   ├── aws-plan.md
│   ├── architecture-notes.md
│   ├── deployment-checklist.md
│   ├── ec2-launch-notes.md
│   ├── linux-hardening-notes.md
│   ├── nginx-setup-notes.md
│   ├── domain-setup-notes.md
│   ├── https-setup-notes.md
│   ├── operations-scripts-notes.md
│   ├── final-project-summary.md
│   └── interview-talk-track.md
└── scripts/
    ├── health-check.sh
    ├── backup-site.sh
    ├── check-logs.sh
    ├── safe-nginx-restart.sh
    ├── rotate-health-log.sh
    └── run-ops.sh
```

---

## 🔁 Operations Scripts Overview

### health-check.sh

Checks if the site is reachable over HTTPS and logs results.

### backup-site.sh

Creates timestamped backups of:

* site files
* Nginx configuration

### check-logs.sh

Displays:

* Nginx service status
* recent logs
* access and error logs

### safe-nginx-restart.sh

* Validates config
* Reloads Nginx safely

### rotate-health-log.sh

Archives custom logs safely

### run-ops.sh

Runs all operational tasks in sequence

---

## 🔐 Security Practices Implemented

* SSH key-based authentication
* Disabled password login
* Disabled root SSH login
* Dedicated admin user
* Restricted SSH access via security group
* HTTPS enforced with TLS certificates

---

## 📊 Key Learning Outcomes

This project helped me gain hands-on experience with:

* Linux server administration
* SSH and access control
* AWS EC2 provisioning
* Networking and security groups
* Nginx configuration
* DNS and hostname routing
* HTTPS and TLS certificates
* Bash scripting for operations
* System validation and troubleshooting
* Writing clean technical documentation

---

## ⚠️ Notes

* `sslip.io` is used for development/testing only
* A real production setup would use a custom domain
* This project focuses on fundamentals, not scalability

---

## 🎯 Why This Project Matters

This project demonstrates the ability to:

* Build infrastructure from scratch
* Secure and configure a Linux server
* Deploy and expose a web service
* Implement HTTPS correctly
* Automate operational tasks
* Document everything clearly

It reflects **real-world DevOps fundamentals**, not just theory.

---

## 🚀 Next Steps (Future Improvements)

* Deploy a real application (Node.js / FastAPI)
* Add Docker and containerization
* Implement CI/CD pipeline
* Add monitoring (Prometheus / Grafana)
* Use a real domain and DNS provider
* Introduce infrastructure as code (Terraform)

---

## 👨‍💻 Author

Muhammad Hashim
