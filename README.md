# DevOps Expert's Project

## Overview

This is Ness Bokobza's assignment for the DevOps Experts course.

## Project Structure

```
docker-k8s-app
├── src
│   ├── app.py              # Main application code
│   ├── docker-compose.yml  # Docker Compose configuration
│   ├── Dockerfile          # Instructions to build the Docker image
│   └── requirements.txt    # Python dependencies
├── k8s
│   ├── deployment.yml      # Kubernetes Deployment resource
│   ├── flask-pod.yml       # Kubernetes Pod resource for Flask
│   ├── hpa.yml             # Kubernetes Horizontal Pod Autoscaler resource
│   └── service.yml         # Kubernetes Service resource
├── deploy.sh               # Script to deploy the application
├── .gitignore              # Files to ignore in Git
└── README.md               # Project documentation
```

## Getting Started

### Setup Instructions

To run everything, simply use the `deploy.sh` file.
