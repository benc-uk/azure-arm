# Webapp With Code Deployment
Create a Web App and deploy/release application code to it, from external Git repository. The App Service will automatically build the app depending on the detected project type (Node.js, .NET etc)

### Deployed Resources
- Web App
- App Service Plan

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-withcode%2Fazuredeploy.json)  

### Parameters
- `webSiteName`: Web app name (globally unique)
- `appSizingTier`: Size/SKU of app service
- `appInstanceCount`: Nummber of instances/workers
- `sourceRepo`: URL of git repo e.g. https://github.com/bob/my-project.git
- `sourceBranch`: Branch to deploy, e.g. "master"     

### Notes
