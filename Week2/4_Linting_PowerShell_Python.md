# Linting in PowerShell and Python

- Linting is the process of running a program that will analyze code for potential errors.
- For Python, we will use **Pylint**
- To install Pylint, run `pip install pylint`
- In the video, Michael types `pylint s3bucket.py` to run Pylint, but in my case I got an error.
- I ran `python -m pylint s3bucket.py` and it worked.
- For PowerShell, we are going to use the **PSScriptAnalyzer** module.
- Michael mentions in the video that this module comes preinstalled in Windows 10, but in my case I had to install it.
- To install the module, I ran `Install-Module -Name PSScriptAnalyzer`
- We then create a new PowerShell script called [linting.ps1](Project3/linting.ps1), which will execute the Script Analyzer.
- The *linting.ps1* script contains the following command: `Invoke-ScriptAnalyzer -Path .`
- the . (dot) as argument for the *Path* parameter tells Script Analyzer to look in the same folder where the Script Analyzer script resides.
