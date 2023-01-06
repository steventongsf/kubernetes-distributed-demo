# Kubernetes Distributed Demo
Demo of a multi-container application consisting of:

* Authorization server
* Tasks server
* Users server
* Browser UI

# Local Runtime Instructions
```
docker compose -d up
```
# Kubernetes Runtime Instructions
The following assumes 
* you have a configured Kubernetes cluster *
* authenticated administration client to run __kubectl__
* Make is installed
* kubectl is installed

## Build and push Docker images
Assumes you are logged into Docker Hub and you're images are publicly accessible from Docker Hub
```
make build
```
## Deploy to Kubernetes
```
make deploy
```
## Check Kubernetes runtime
```
make status
```
## Remove deployments and services
```
make delete
```

# To Dos
* create and use PersistentVolume
* Move hard-coded values to environment variables



