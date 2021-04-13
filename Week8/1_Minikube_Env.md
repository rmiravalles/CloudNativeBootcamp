# Creating a Minikube Environment

- [minikube](https://minikube.sigs.k8s.io/docs/) is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your PC so that you can try out Kubernetes, or for daily development work.
- To install minikube, follow [these instructions](https://minikube.sigs.k8s.io/docs/start/).
- I'm on a Windows 10 machine, and I installed minikube using Chocolatey, by running `choco install minikube`.
- After minikube is successfully installed, we run `minikube start` to start our cluster.
- To verify we have a running cluster, we type `kubectl get node`.
- To deploy our application, we'll use a Kubernetes manifest, which is a file written in YAML that is used to create, modify and delete Kubernetes resources.
- [This is our Kubernetes manifest](Project1/nginx.yml)
- Here, we'll deploy an NGINX server running in 2 pods.
- To create the deployment, from the directory where the manifest is, we run `kubectl create -f nginx.yml`.
- To get the deployments, we run `kubectl get deployments`.
- To get the pods, we run `kubectl get pods`.
