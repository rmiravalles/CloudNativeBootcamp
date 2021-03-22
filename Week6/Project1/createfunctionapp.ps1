function Create-FunctionApp {
    param (
        [Parameter(Mandatory)]
        [string]$RGName,
        
        [Parameter(Mandatory)]
        [string]$name,

        [Parameter(Mandatory)]
        [string]$storageAccountName
    )

    az group create --name $RGName --location westeurope
    
    az storage account create --name $storageAccountName `
                                --resource-group $RGName

    $plan = az functionapp plan create -g $RGName `
                                -n $($name + 'plan') `
                                --min-instances 1 `
                                --max-burst 5 `
                                --sku EP1
    $plan

    az functionapp create -g $RGName `
                        -n $name `
                        -p $($name + 'plan') `
                        --runtime powershell `
                        -s $storageAccountName `
                        --functions-version 2

    
}