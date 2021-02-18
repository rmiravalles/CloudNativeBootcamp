function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]
    param (
        [parameter(Mandatory)]
        [string]$rgName,

        [Parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgName
        'Location' = $location
    }
    if($PSCmdlet.ShouldProcess('location')){
    New-AzResourceGroup @params
    }
}