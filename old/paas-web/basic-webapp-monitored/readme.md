# Basic Web App with App Insights
Simple App Services template deploying a single PaaS Web App and App Service Plan.
App Insights instance is also deployed and the site configured to sent data to it

### Deployed Resources
- Microsoft.Web/serverfarms
- Microsoft.Web/sites
- Microsoft.insights/components

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fbasic-webapp-monitored%2Fazuredeploy.json)  

### Parameters
- `webSiteName`: Web app name (globally unique)
- `appSizingTier`: Size/SKU of app service, default is B1
- `appInstanceCount`: Number of instances/workers

### Outputs
- `websiteUrl`: URL of new site

### Notes