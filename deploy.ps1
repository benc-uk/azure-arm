<#
.SYNOPSIS
    Standard ARM deployment from given template
.DESCRIPTION
    Deploy an ARM template to Azure in given location & subscription
    Additional input parameter file is required
.NOTES
    Author:   Ben Coleman
    Date/Ver: Feb 2017, v2
#>

# Change as required!
param(
    [string]$subname    = "Microsoft Azure Internal Consumption",
    [string]$res_grp, 
    [string]$loc         = "westeurope",
    [string]$template, 
    [string]$param_file  = $template.substring(0,$template.length-5) + ".parameters.json",
    [string]$pub_key
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
New-AzureRmResourceGroup -Name $res_grp -Location $loc -Force

if($pub_key) {
    $pub_key_data = Get-Content -Path $pub_key
}

$timestamp = ((Get-Date).ToUniversalTime()).ToString('yyyy-MM-dd_HH.mm')

# Start the deployment, give the deployment a name with date/time stamp
# Change mode as required, default & safe is 'Incremental'
New-AzureRmResourceGroupDeployment -ResourceGroupName $res_grp `
                                   -Name "deployment_$($timestamp)" `
                                   -TemplateFile $template `
                                   -TemplateParameterFile $param_file `
                                   -Mode Incremental -Verbose #-sshKey $pub_key_data