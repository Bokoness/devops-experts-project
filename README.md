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
│   ├── cronjob.yml         # Kubernetes CronJob resource
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

## 📒 Kubernetes Notebook: Component Explanations
This section provides a quick reference and explanation for each Kubernetes manifest in the project.

### 1. Deployment (k8s/deployment.yml)
Purpose:
Manages the desired state of your application by ensuring a specified number of pod replicas are running at all times.

What it does:
Automatically replaces failed pods, updates your app with zero downtime, and manages rolling updates.

### 2. ReplicaSet (Managed by Deployment)
Purpose:
Ensures a stable set of replica pods are running at any given time.

What it does:
The Deployment creates and manages a ReplicaSet, which in turn keeps the correct number of pods running.

### 3. Service (k8s/service.yml)
Purpose:
Exposes your application to the network, allowing it to be accessed from outside the cluster (or by other services inside the cluster).

What it does:
Provides a stable IP and DNS name for your app, and load-balances traffic to healthy pods.

### 4. ConfigMap (k8s/configmap.yml)
Purpose:
Stores non-sensitive configuration data (like environment variables) separately from your application code.

What it does:
Allows you to change your app’s configuration without rebuilding your Docker image.

### 5. Horizontal Pod Autoscaler (HPA) (k8s/hpa.yml)
Purpose:
Automatically scales the number of pod replicas up or down based on CPU usage or other metrics.

What it does:
Helps your app handle changes in load efficiently and cost-effectively.

### 6. CronJob (k8s/cronjob.yml)
Purpose:
Schedules and runs jobs (like scripts or maintenance tasks) at specified times or intervals, similar to Linux cron.

What it does:
Automates periodic tasks, such as database backups or log cleanups.

### 7. Pod (k8s/flask-pod.yml)
Purpose:
The most basic deployable unit in Kubernetes, representing a single instance of your application.

What it does:
Useful for testing, but in production you usually use Deployments to manage pods.

### 8. Liveness & Readiness Probes (in deployment.yml)
Purpose:
Health checks for your application.

What it does:

Liveness Probe: Restarts the pod if the app becomes unresponsive.

Readiness Probe: Ensures the pod only receives traffic when it’s ready.
