# Creating an AKS Cluster

For this project, we'll create a Kubernetes cluster in [Azure Kubernetes Service](https://docs.microsoft.com/en-us/azure/aks/) using Azure CLI.

## The Project

- To deploy our resources, we'll use [this PowerShell script](Project2/azaks.ps1).
- We'll use the `az aks create` Azure CLI command to create our Kubernetes cluster.
- There's a parameters block in the script, so it can be reused.

- To pull down the AKS configuration so we can interact with it from our local computer, we run this command:

`az aks get-credentials --name cloudskillsaks66 --resource-group azaksrg`

- This command will return a result that says the AKS cluster has been merged into our local context.
- To get the nodes: `kube ctl get nodes`
- With this command, we see that our context is pointing to the AKS cluster running in Azure.
