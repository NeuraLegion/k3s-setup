# Stop docker compose
docker-compose down

# Remove all containers, networks, and volumes
docker-compose down -v --remove-orphans

# Remove the specific volume
docker volume rm k3s_k3s-server

# Remove any dangling volumes
docker volume prune -f

# Remove local k3s data
sudo rm -rf ./k3s_data/kubeconfig/*
sudo rm -rf ./k3s_data/docker_images/*

# Or if you want to keep the structure
rm -f ./k3s_data/kubeconfig/kubeconfig.yaml

# Check no k3s containers running
docker ps -a | grep k3s

# Check no k3s volumes
docker volume ls | grep k3s

# Check no networks
docker network ls
