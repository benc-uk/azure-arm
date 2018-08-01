# App Service Container Web App
Create a Container Web App (Linux) to run a custom Docker image stored in an existing *Azure Container Registry*

### Deployed Resources
- Web App (Linux)

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fweb%2Fcontainer-acr%2Fazuredeploy.json)  

### Parameters
- `siteName`: Web app name (globally unique)
- `existingPlan`: Resource group and name of existing App Service Plan, e.g. `myResGrp/appPlanBlah`
- `registryName`: Existing ACR instance name 
- `registryPassword`: Admin password for ACR
- `imageNameTag`: Name and tag of your image

### Notes
The Azure Container Registry (ACR) must exist and contain the container image prior to deployment
