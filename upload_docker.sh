#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mego2000/app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacity:latest mego2000/hello:latest
docker login --username=mego2000

# Step 3:
# Push image to a docker repository
docker push mego2000/hello:latest