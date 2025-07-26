# Java SSH Docker CI/CD Load Balancer
Automated deployment of a Java app using SSH, Docker, GitHub Actions &amp; AWS Load Balancer


## 🚀 Overview

This project automates deployment of a Java app using:
- SSH cloning via shell script
- Running `.jar` file on port 9000
- Docker image setup
- GitHub Actions CI/CD
- AWS Application Load Balancer setup

---

## Architecture Flow Diagram

          ┌─────────────────────┐
          │  GitHub Repository  │◄──────┐
          └─────────────────────┘       │
                   │                    │
                   ▼                    │
        ┌──────────────────────┐        │
        │  GitHub Actions CI/CD│◄────┐  │
        └──────────────────────┘     │  │
                   │                Push Code
                   ▼                    │
     ┌──────────────────────────┐       │
     │ Build Docker Image (Java │       │
     │    App using .jar)       │       │
     └──────────────────────────┘       │
                   │                    │
                   ▼                    │
     ┌──────────────────────────┐       │
     │ Push Image to DockerHub  │───────┘
     └──────────────────────────┘
                   │
                   ▼
     ┌──────────────────────────┐
     │  Deploy to AWS EC2 using │
     │     SSH & Docker Run     │
     └──────────────────────────┘
                   │
                   ▼
     ┌──────────────────────────┐
     │  Java App running on     │
     │     EC2 port 9000        │
     └──────────────────────────┘
                   │
                   ▼
     ┌──────────────────────────┐
     │ AWS Application Load     │
     │ Balancer (Port 80 → 9000)│
     └──────────────────────────┘
                   │
                   ▼
            ┌────────────┐
            │  End User  │
            └────────────┘

--- 

# Docker operations
docker build -t java-jar-app .
docker run -d -p 9000:9000 java-jar-app

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

## Docker
- docker build -t java-jar-app .
- docker run -d -p 9000:9000 java-jar-app

---

## 📦 CI/CD
- Automatically builds, pushes, and deploys to EC2
- Uses GitHub Secrets for credentials

---

## 🌐 AWS Load Balancer
- Type: ALB
- Port: 80 → 9000 (EC2 instance)
- Health Check: Path / on port 9000

---

👉 See [assumptions.md](./assumptions.md) for decisions, failure handling, and secrets setup.
