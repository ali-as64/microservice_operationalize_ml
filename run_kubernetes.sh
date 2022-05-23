#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=alias64/microserv
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microserv --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get nodes

# Step 4:
# Forward the container port to a host
kubectl port-forward microserv 8000:80
