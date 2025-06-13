# docker-k8s-app Documentation

## Overview
This project is a Dockerized web application built using Flask and deployed on Kubernetes. It includes all necessary files to build the Docker image, deploy the application, and expose it via a Kubernetes service.

## Project Structure
```
docker-k8s-app
├── src
│   ├── app.py              # Main application code
│   └── requirements.txt     # Python dependencies
├── Dockerfile               # Instructions to build the Docker image
├── k8s
│   ├── deployment.yml       # Kubernetes Deployment resource
│   └── service.yml          # Kubernetes Service resource
├── .dockerignore            # Files to ignore when building the Docker image
├── .gitignore               # Files to ignore in Git
└── README.md                # Project documentation
```

## Getting Started

### Prerequisites
- Docker
- Kubernetes (Minikube, GKE, EKS, etc.)
- kubectl

### Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd docker-k8s-app
   ```

2. **Build the Docker image:**
   ```
   docker build -t flask-app .
   ```

3. **Deploy to Kubernetes:**
   - Apply the deployment configuration:
     ```
     kubectl apply -f k8s/deployment.yml
     ```
   - Apply the service configuration:
     ```
     kubectl apply -f k8s/service.yml
     ```

4. **Access the application:**
   - Get the NodePort assigned to the service:
     ```
     kubectl get services
     ```
   - Access the application using the Node IP and NodePort.

## Additional Information
- Modify `src/requirements.txt` to add any additional Python dependencies.
- Update `Dockerfile` if you need to change the base image or application setup.
- Adjust `k8s/deployment.yml` for scaling or updating the application.

## License
This project is licensed under the MIT License.