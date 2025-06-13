#!/bin/bash

# Build the Docker image
docker build -t bokoness/flask-app:latest src/.

# Deploy to Kubernetes
kubectl apply -f k8s/configmap.yml
kubectl apply -f k8s/deployment.yml
kubectl apply -f k8s/service.yml
kubectl apply -f k8s/hpa.yml

# Wait for pods to be ready (optional, adjust timeout as needed)
echo "Waiting for pods to be ready..."
kubectl wait --for=condition=ready pod -l app=flask-app --timeout=120s

# Get the name of a running pod
POD_NAME=$(kubectl get pods -l app=flask-app -o jsonpath='{.items[0].metadata.name}')

# Port-forward the pod to localhost:5000
echo "Port-forwarding pod $POD_NAME to localhost:5000..."
echo "Press Ctrl+C to stop port-forwarding."
kubectl port-forward pod/$POD_NAME 5000:5000