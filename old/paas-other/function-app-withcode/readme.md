# Deploy a Function App + Code
Create a Function App and deploy code to it from Github repo 

### Deployed Resources
- Function App
- App Service Plan
- Storage Account

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-other%2Ffunction-app-withcode%2Fazuredeploy.json)  

### Parameters
- `servicePlanName`: Name of app service plan
- `functionAppName`: Function App name (globally unique)
- `sourceRepo`: URL of Github repo to deploy
- `sourceBranch`: Branch of git repo 

### Notes
It is expected the repo contains valid folders & files for a Function App!