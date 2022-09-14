#!/usr/bin/bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=abrams88/udacity_project:latest
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udacity-project --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods,deploy

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity-project 8000:80
