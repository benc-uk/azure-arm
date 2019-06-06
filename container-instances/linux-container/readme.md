# Simple Linux Container Instance
Create a basic container using Azure Container Instances. The provided parameters will start up a Node.js demo web application

### Deployed Resources
- Microsoft.ContainerInstance/containerGroups

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fcontainer-instances%2Flinux-container%2Fazuredeploy.json)  

### Parameters
- `containerName`: Name of the container resource in Azure
- `port`: Port the container exposes and is listening on
- `image`: Reference to Docker repo, image & tag in standard notation

### Outputs
- `newContainerURL`: URL of new container including public IP
- `newContainerState`: State of the container

### Notes
