# Webapp Linux & Container Registry (Pre-Deployed)
Create a Linux Web App to run a *custom* Docker image stored in an *existing* Azure Container Registry

### Deployed Resources
- Web App (Linux)
- App Service Plan (Linux)

### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-linux-custom%2Fazuredeploy.json)  

### Parameters
- `siteName`: Web app name (globally unique)
- `sitePlanSize`: Size/SKU of app service
- `registryName`: Existing ACR name 
- `registryPassword`: Admin password for ACR
- `dockerImageName`: Name & tag of custom image
- `dockerImagePort`: Port app listens on

### Notes
The Azure Container Registry (ACR) must exist prior to deployment, see [template **webapp-linux-acr**](../webapp-linux-acr/) for a template that deploys both the app and the ACR 