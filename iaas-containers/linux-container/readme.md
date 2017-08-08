# Simple Linux Container Instance
Create a basic container using Azure Container Instances. The provided parameters will start up a Node.js demo web application

### Deployed Resources
- Microsoft.ContainerInstance/containerGroups

### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fiaas-containers%2Flinux-container%2Fazuredeploy.json)  

### Parameters
- `containerName`: Name of the container resource in Azure
- `port`: Port the container exposes and is listening on
- `image`: Reference to Docker repo, image & tag in standard notation
- `previewLocation`: During preview only available in these regions: westeurope westus & eastus

### Outputs
- `newContainerURL`: URL of new container including public IP
- `newContainerState`: State of the container

### Notes
