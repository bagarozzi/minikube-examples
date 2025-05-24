# Minikube examples
This repository contains examples of how to use Minikube to run Kubernetes clusters locally. 
The various examples will demonstrate different features and components of Kubernetes by using Minikube, the local versioin of Kubernetes that can be run through Docker or other VM managers.

### Installation
To install Minikube, follow the instructions on the [Minikube installation page](https://minikube.sigs.k8s.io/docs/start/).

Then install Kubectl, the Kubernetes command-line tool, by following the instructions on the [Kubectl installation page](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

Finally, ensure you have Docker installed on your machine. You can find installation instructions on the [Docker website](https://docs.docker.com/get-docker/).

### Usage with Docker
Make sure the Docker Engine is running on your machine. You can check this by running:

```bash
docker info
```
If Docker is running, you should see information about your Docker installation. If not, start the Docker service.
Then to start Minikube, run the following command in your terminal:
```bash
minikube start --driver=docker
```