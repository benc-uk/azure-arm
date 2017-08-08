# Deploy a Function App + Code
Create a Function App and deploy code to it from Github repo 

### Deployed Resources
- Function App
- App Service Plan
- Storage Account

### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Ffunction-app-withcode%2Fazuredeploy.json)  

### Parameters
- `servicePlanName`: Name of app service plan
- `functionAppName`: Function App name (globally unique)
- `sourceRepo`: URL of Github repo to deploy
- `sourceBranch`: Branch of git repo 

### Notes
It is expected the repo contains valid folders & files for a Function App!