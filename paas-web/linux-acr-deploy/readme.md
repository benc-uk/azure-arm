# Webapp Linux & Container Registry
Create a Linux Web App to run a *custom* Docker image stored in Azure Container Registry

### Deployed Resources
- Web App (Linux)
- App Service Plan (Linux)
- Container Registry
- Storage account (automatically provisioned with registry)

### Quick Deploy
[![deploy](http://files.bencoleman.co.uk/img/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-linux-acr%2Fazuredeploy.json)  

### Parameters
- `siteName`: Web app name (globally unique)
- `registryName`: ACR name (globally unique)
- `dockerImageName`: Name & tag of custom image
- `dockerImagePort`: Port app listens on

### Notes
The image will not exist at the time of the creation of the web app, beacuse the ACR is created new and empty. This means the web app will deploy but the site will be an error state (HTTP 503).

The follow on tasks post deployment of this template are:
 - Build your Docker image (manually or using VSTS)
 - Push image to the ACR
 - Restart the web app