# Java SSH Docker CI/CD Load Balancer
Automated deployment of a Java app using SSH, Docker, GitHub Actions &amp; AWS Load Balancer
![CI](https://github.com/Aadhi07-cloud/java-ssh-docker-CI-CD-loadbalancer/actions/workflows/deploy.yml/badge.svg)

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

---

# Docker
- docker build -t java-jar-app .
- docker run -d -p 9000:9000 java-jar-app

---

# 📦 CI/CD
- Automatically builds, pushes, and deploys to EC2
- Uses GitHub Secrets for credentials

---

# 🌐 AWS Load Balancer
- Type: ALB
- Port: 80 → 9000 (EC2 instance)
- Health Check: Path / on port 9000

---

👉 See [assumptions.md](./assumptions.md) for decisions, failure handling, and secrets setup.
