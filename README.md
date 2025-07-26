# java-ssh-docker-CI-CD-loadbalancer
Automated deployment of a Java app using SSH, Docker, GitHub Actions &amp; AWS Load Balancer

# Java SSH Docker CI/CD Load Balancer

## 🚀 Overview

This project automates deployment of a Java app using:
- SSH cloning via shell script
- Running `.jar` file on port 9000
- Docker image setup
- GitHub Actions CI/CD
- AWS Application Load Balancer setup

---

## 📂 Contents

- `start_server.sh`: Clones and runs the `.jar` file
- `Dockerfile`: Containerizes the app
- `.github/workflows/deploy.yml`: Automates CI/CD to EC2
- `assumptions.md`: Assumptions & failure handling

---

## 🛠️ How to Use

### Run Locally:
```bash
chmod +x start_server.sh
./start_server.sh

