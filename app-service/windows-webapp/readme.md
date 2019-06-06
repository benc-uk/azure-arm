# App Service - Windows Web App

## Templates
- **web-app-git.json** - Deploy web app using remote Git repo and App Service's Kudu deployer

## Deployed Resources
- Web App (Windows)

## Quick Deploy
### Using Azure Container Registry
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy-wafc.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fapp-service%2Fbasic-webapp%2Fweb-app-git.json)  
 

## Parameters
### web-app-git
- `siteName`: Web app name (globally unique)
- `existingPlan`: Resource group and name of existing App Service plan, separated with forward slash, e.g. `myResGrp/appPlanBlah`
- `gitRepoURL`: URL of remote Git repo to deploy, leave blank to deploy an "empty" site
- `gitRepoBranch`: Branch of remote Git repo
- `appSettings`: Site app settings, as an array of objects, e.g. `[ { "name": "MY_SETTING", "value": "123bogus" } ]`

## Notes
- The templates **do not deploy an App Service Plan**, this must exist first. See [this template to deploy a plan prior to using this template](../service-plans)
