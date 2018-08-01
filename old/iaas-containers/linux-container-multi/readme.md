# Multi Container Instance
Create multi containers using Azure Container Instances. The provided parameters will start up a Node.js demo web application & .NET Core app on separate ports (3000 and 5000)

### Deployed Resources
- Microsoft.ContainerInstance/containerGroups

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fiaas-containers%2Flinux-container-multi%2Fazuredeploy.json)  

### Parameters
- `containerName`: Name of the container resource in Azure
- `previewLocation`: During preview, only available in these regions: **westeurope**, **westus** & **eastus**

### Notes
This is a test template with some hardcoded values