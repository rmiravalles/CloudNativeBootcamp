# Creating a Minikube Environment

- [minikube](https://minikube.sigs.k8s.io/docs/) is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your PC so that you can try out Kubernetes, or for daily development work.
- To install minikube, follow [these instructions](https://minikube.sigs.k8s.io/docs/start/).
- I'm on a Windows 10 machine, and I installed minikube using Chocolatey, by running `choco install minikube`.
- After minikube is successfully installed, we run `minikube start` to start our cluster.
- To create the deployment, we run `kubectl create -f nginx.yml`.
- To get the deployments, we run `kubectl get deployments`.
- To get the pods, we run `kubectl get pods`.
