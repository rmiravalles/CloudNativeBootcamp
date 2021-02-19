function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]  # the SupportShouldProcess argument adds Confirm and WhatIf parameters to the function
    param (
        [Parameter(Mandatory)]  # this indicates that the parameter is mandatory and must be presented at runtime
        [string]$rgName,

        [Parameter(Mandatory)]
        [string]$location
    )

    # this is splatting, a method of passing a collection of parameter values to a command as a single unit
    $params = @{
        'Name' = $rgName
        'Location' = $location
    }
    if($PSCmdlet.ShouldProcess('location')){
    New-AzResourceGroup @params
    }
}