#!/bin/bash

REPO_SSH_URL="git@github.com:your-username/your-java-repo.git"
CLONE_DIR="cloned-java-project"

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Cloning repository..."
if git clone "$REPO_SSH_URL" "$CLONE_DIR"; then
  log "Repository cloned successfully."
else
  log "Failed to clone repository."
  exit 1
fi

cd "$CLONE_DIR" || exit 1

if [ -f "build/libs/project.jar" ]; then
  log "JAR file found. Starting the server..."
  nohup java -jar build/libs/project.jar > app.log 2>&1 &
  log "Server started on port 9000."
else
  log "JAR file not found!"
  exit 1
fi
