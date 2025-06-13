# DevOps Expert's Project

## Overview

This is Ness Bokobza's assignment for the DevOps Experts course.

## Project Structure

```
devops-experts-tasks
├── deploy.sh               # Script to deploy the application
├── README.md               # Project documentation
├── k8s
│   ├── configmap.yml       # Kubernetes ConfigMap resource
│   ├── deployment.yml      # Kubernetes Deployment resource
│   ├── flask-pod.yml       # Kubernetes Pod resource for Flask
│   ├── hpa.yml             # Kubernetes Horizontal Pod Autoscaler resource
│   └── service.yml         # Kubernetes Service resource
├── src
│   ├── app.py              # Main application code
│   ├── docker-compose.yml  # Docker Compose configuration
│   ├── Dockerfile          # Instructions to build the Docker image
│   └── requirements.txt    # Python dependencies
```

## Getting Started

### Setup Instructions

To run everything, simply use the `deploy.sh` file.
