# to run the test, we'll use Pester, a PowerShell testing framework
# Invoke-Pester .\New-ResourceGroup-test.ps1

Describe "New-ResourceGroup" {
    $location = 'westeurope'
    $name = 'cloudskillsbootcamp'

    # the It line is just for the person reading the test to know 
    # what value should be expected
    
    It "Name should be cloudskillsbootcamp" {
        $name | Should Be 'cloudskillsbootcamp'
    }

    It "location should be westeurope" {
        $location | Should Be 'westeurope'
    }
}