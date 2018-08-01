# App Service - Plan

## Templates
- **linux.json** - Deploy Linux App Service plan (for use with containers)
- **windows.json** - Deploy Windows App Service plan

## Deployed Resources
- App Service Plan

## Quick Deploy
### Using Azure Container Registry
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fweb%2Fcontainer-acr%2Fazuredeploy.json)  

### Using Public Dockerhub
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fweb%2Fcontainer-acr%2Fazuredeploy.json)  

## Parameters
- `planName`: Name of App Service Plan
- `sizingTier`: SKU or pricing tier, one of: (Basic) B1, B2 B3 or (Standard) S1, S2, S3, or (Premium) P1, P2, P3
- `instanceCount`: Number of instances/workers to deploy (between 1 and 10)
