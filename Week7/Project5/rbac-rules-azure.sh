# create a service principal

az ad sp create-for-rbac -n "AzureDevOps" --role contributor --scopes /subscriptions/xxxxxxxxxx

# create a service principal for SDK/programmatic access

az ad sp create-for-rbac -n "AzureDevOps" --role contributor --scopes /subscriptions/xxxxxxxxxx --sdk-auth