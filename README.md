# K3s Development Setup

This repository contains a Docker Compose setup for K3s with automated deployment of:

- NGINX Ingress Controller
- Self-signed certificates
- BrokenCrystals vulnerable application

## Quick Start

```bash
# Start the cluster
docker-compose up -d

# Watch setup progress
docker-compose logs -f k3s-setup

# Add to /etc/hosts
echo "127.0.0.1 brokencrystals.local auth.brokencrystals.local mailcatcher.brokencrystals.local" | sudo tee -a /etc/hosts
```

## Access URLs

- Main app: https://brokencrystals.local
- Keycloak: https://auth.brokencrystals.local  
- Mailcatcher: https://mailcatcher.brokencrystals.local

## Cleanup

```bash
bash clean.sh
```

## Components

- **K3s**: Lightweight Kubernetes distribution
- **NGINX Ingress**: Ingress controller for routing
- **BrokenCrystals**: Vulnerable web application for security testing
- **Self-signed certificates**: For HTTPS development
