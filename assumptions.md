# Assumptions & Failure Handling

## ✅ Assumptions
- Java 17 is pre-installed on EC2
- Docker is installed on EC2
- The Java JAR file exists at: `build/libs/project.jar`
- SSH access to the private GitHub repo is already configured on the EC2 instance

## ❌ Possible Failures & Handling
- **SSH Clone Fails**: `start_server.sh` logs and exits with error
- **Missing JAR File**: Script checks and exits if not found
- **Java not installed**: Assumed pre-installed (can be added via Docker base image if needed)
- **GitHub Actions**:
  - Fails gracefully if secrets are not set
  - Uses logs to help debug failed jobs

## 🔐 GitHub Secrets Required
To make CI/CD work:
- `DOCKER_USERNAME`: Your DockerHub username
- `DOCKER_PASSWORD`: Your DockerHub password or token
- `EC2_HOST`: Public IP or DNS of your EC2 instance
- `EC2_SSH_KEY`: Private key to connect to EC2 via SSH
