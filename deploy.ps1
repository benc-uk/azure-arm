<#
.SYNOPSIS
    Standard ARM deployment from given template
.DESCRIPTION
    Deploy an ARM template to Azure in given location & subscription
    Additional input parameter file is expected
.NOTES
    Author:   Ben Coleman
    Date/Ver: Feb 2017, v2
#>

# Change as required!
param(
    [string]$subname     = "Microsoft Azure Internal Consumption",
    [string]$group, 
    [string]$loc         = "westeurope",
    [string]$template, 
    [string]$paramFile   = $template.substring(0,$template.length-5) + ".parameters.json",
    [string]$pubKey
)

### Standard Azure login
try {
    Select-AzureRmProfile -Path "$env:userprofile\.azureprof.json" -ErrorAction Stop
    Get-AzureRmSubscription -ErrorAction SilentlyContinue | Out-Null
} catch {
    Login-AzureRmAccount -ErrorAction Stop
    Save-AzureRmProfile -Path "$env:userprofile\.azureprof.json"
}

# Select which Azure subscription
Select-AzureRmSubscription -SubscriptionName $subname -ErrorAction Stop

# Create the resource goup
New-AzureRmResourceGroup -Name $group -Location $loc -Force

$timestamp = ((Get-Date).ToUniversalTime()).ToString('yyyy-MM-dd_HH.mm')

# Start the deployment, give the deployment a name with date/time stamp
# Change mode as required, default & safe is 'Incremental'
if($pubKey) {
    $pub_key_data = Get-Content -Path $pubKey
    New-AzureRmResourceGroupDeployment -ResourceGroupName $group `
                                   -Name "deployment_$($timestamp)" `
                                   -TemplateFile $template `
                                   -TemplateParameterFile $paramFile `
                                   -Mode Incremental -Verbose -sshKey $pub_key_data
} else {
    New-AzureRmResourceGroupDeployment -ResourceGroupName $group `
                                   -Name "deployment_$($timestamp)" `
                                   -TemplateFile $template `
                                   -TemplateParameterFile $paramFile `
                                   -Mode Incremental -Verbose                                  
}