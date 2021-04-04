# Creating RBAC Rules and Azure Policies

## Service Principals

- An Azure service principal is an identity created for use with applications, hosted services, and automated tools to access Azure resources. This access is restricted by the roles assigned to the service principal, giving you control over which resources can be accessed and at which level.
- **For security reasons, it's always recommended to use service principals with automated tools rather than allowing them to log in with a user identity.**
- To create a Service Principal and configure its access to Azure resources using Azure CLI, type the following command:

`az ad sp create-for-rbac -n "AzureDevOps" --role contributor --scopes /subscriptions/xxxxxxxxxx`

- Here, we'll create a Service Principal with a custom name (AzureDevOps) with the contributor role.
- This role assignment will apply to the subscription. We can get more granular, and specify a resource group, or even a single resource.
- If we want our apps to have access to Azure resources, we need to add the `sdk-auth` argument to our command.

`az ad sp create-for-rbac -n "AzureDevOps" --role contributor --scopes /subscriptions/xxxxxxxxxx --sdk-auth`

- This command will generate an output that is compatible with Azure SDK auth file.
- This is used when you want to do anything from a programmatic perspective.

## Azure Active Directory

- Azure Active Directory (Azure AD) is Microsoft's enterprise cloud-based identity and access management (IAM) solution.

## Azure Policy

- Azure Policy helps to enforce organizational standards and to assess compliance at-scale.
- Common use cases for Azure Policy include implementing governance for resource consistency, regulatory compliance, security, cost, and management.
- Azure Policy evaluates resources in Azure by comparing the properties of those resources to business rules. These business rules, described in JSON format, are known as policy definitions.
- [Azure Policy documentation](https://docs.microsoft.com/en-us/azure/governance/policy/)
