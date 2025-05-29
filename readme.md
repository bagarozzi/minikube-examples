# Minikube examples
This repository contains examples of how to use Minikube to run Kubernetes clusters locally. 
The various examples will demonstrate different features and components of Kubernetes by using Minikube, the local versioin of Kubernetes that can be run through Docker or other VM managers.

## About the examples
Each example is contained in its own directory, with a README file that explains how to run the example and what it does. Here's a list ordered by difficulty:
- [Simple Ingress](minikube/simple-ingress/): Demonstrates how to set up Ingress routing and the usage of Services to expose applications on Pods.
- [Simple Multinode](minikube/simple-multinode/): Shows how to deploy to a multi-node cluster using Minikube. A simple web application is deployed across the cluster. 
- [HPA Ingress](minikube/hpa-ingress/): Demonstrates how to set up Horizontal Pod Autoscaling (HPA) to automatically scale the number of Pods hosting a single application. 
- [Multiple Ingress](minikube/multiple-ingress/): Shows how to route traffic to multiple services using Ingress.
- [Multiple HPA Ingress](minikube/multiple-hpa-services/): Joins all the examples into one complex one that resembles more a real-world stateless application. 

Go over these examples while following the Kubernetes Documentation to learn the meaning of each component.
In Kubernetes you can combine the various components in each example to create more complex applications.

## Installation
To install Minikube, follow the instructions on the [Minikube installation page](https://minikube.sigs.k8s.io/docs/start/).

Then install Kubectl, the Kubernetes command-line tool, by following the instructions on the [Kubectl installation page](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

Finally, ensure you have Docker installed on your machine. You can find installation instructions on the [Docker website](https://docs.docker.com/get-docker/).

### Usage with Docker
Make sure the Docker Engine is running on your machine. You can check this by running:

```bash
docker info
```
If Docker is running, you should see information about your Docker installation. If not, start the Docker service.
<br>
Then to start Minikube, run the following command in your terminal:
```bash
minikube start --driver=docker
```