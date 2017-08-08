# Basic Web App
Simple App Services template deploying a single PaaS Web App and App Service Plan

### Deployed Resources
- Microsoft.ContainerInstance/containerGroups

### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fbasic-webapp%2Fazuredeploy.json)  

### Parameters
- `webSiteName`: Web app name (globally unique)
- `appSizingTier`: Size/SKU of app service, default is B1
- `appInstanceCount`: Number of instances/workers

### Outputs
- `websiteUrl`: URL of new site

### Notes