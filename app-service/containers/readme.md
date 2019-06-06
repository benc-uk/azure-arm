# App Service - Linux Containers

## Templates
- **web-app-acr.json** - Deploy web app using image in Azure Container Registry
- **web-app-public.json** - Deploy web app using image in Dockerhub

## Deployed Resources
- Web App (Linux)

## Quick Deploy
### Using Azure Container Registry
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy-wafc.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fapp-service%2Fcontainers%2Fweb-app-acr.json)  

### Using Public Dockerhub
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy-wafc.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fapp-service%2Fcontainers%2Fweb-app-public.json)  

## Parameters
### web-app-acr
- `siteName`: Web app name (globally unique)
- `existingPlan`: Resource group and name of existing App Service plan, separated with forward slash, e.g. `myResGrp/appPlanBlah`
- `registryName`: Name of existing ACR instance
- `registryPassword`: Admin password for ACR
- `imageNameTag`: Name and tag of your image

### web-app-public
- `siteName`: Web app name (globally unique)
- `existingPlan`: Resource group and name of existing App Service plan, separated with forward slash, e.g. `myResGrp/appPlanBlah`
- `imageNameTag`: Name and tag of your image


## Notes
- The templates **do not deploy an App Service Plan**, this must exist first. See [this template to deploy a plan prior to using this template](../service-plans)
- The Azure Container Registry (ACR) must exist and contain the container image prior to deployment
