# Documenting Code

- We will use **markdown** to write documentation.
- More information and resources:
    - [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
    - [Complete list of github markdown emoji markup](https://gist.github.com/rxaviers/7360908)
    - [Technical writing guidelines](https://www.digitalocean.com/community/tutorials/digitalocean-s-technical-writing-guidelines)
    - [Technical writing for the Cloudskills community](https://github.com/CloudSkills/technical-writing-for-cloudskills-community)

# Title

Here you will write an introduction to your repository and its contents, and a short synopsis.

## Status

Here you will describe the current status of the repository. This section should be updated regularly.

## PowerShell Code

The PowerShell code found in **Week 2 Scripting Like a Developer** is designed to create a new Resource Group in Azure.

### How to use the PowerShell code

In this section, we describe how the code is used.

In our specific PowerShell case:

- The *New-ResourceGroup* function is found under the *Project3* directory and can be used as a reusable function. 
- The user can pass in parameters at runtime.
- The script can be reused any time for any environment.

### Example

```
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
```

## Python Code

The Python code found in **Week 2 Scripting Like a Developer** is designed to create an S3 Bucket in AWS.

### How to use the Python code

The **s3bucket.py** script is designed to be re-used at any point for any environment. There are no hard-coded values.

### Example

```
import sys
import boto3

try:  # in case an error occurs
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name):
    s3_bucket = boto3.client(
        's3',
        #region-name='us-east-1'
    )

    bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',  # ACL stands for Access Control List
    )

    print(bucket)  # this will print the output of creating the S3 bucket

BUCKET_NAME = sys.argv[1]  # argv allows us to pass an argument at runtime

if __name__ == '__main__':
    main()
   
```

## Testing

Both the PowerShell and Python code have unit tests available, to ensure that the desired outcomes, including values and types, are accurate.

## Contributors

- Michael Levan
- Robert Stojan
- Rodrigo Miravalles
