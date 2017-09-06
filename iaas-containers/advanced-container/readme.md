# Linux Container Instance - Advanced
Create a basic container using Azure Container Instances, backed with a persistent volume and with environmental variables.  
The mounted volume is held in Azure Storage account via an Azure File share, the template does not create this (as this is not possible to create shares via ARM), so it should be pre-provisioned. A [bash Azure CLI script is provided](create-share.sh) which will create both a storage account and a named shared within it, or you can use the portal.

[Full docs on using volumes and Azure files with ACI](https://docs.microsoft.com/en-gb/azure/container-instances/container-instances-mounting-azure-files-volume)

### Deployed Resources
- Microsoft.ContainerInstance/containerGroups

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fiaas-containers%2Fadvanced-container%2Fazuredeploy.json)  

### Parameters
- `containerName`: Name of the container resource in Azure
- `port`: Port the container exposes and is listening on
- `image`: Reference to Docker repo, image & tag in standard notation
- `previewLocation`: During preview, only available in these regions: **westeurope**, **westus** & **eastus**
- `volumeShareName`: Name used for *both* the Docker volume and the share in Azure Files
- `volumeMountPath`: Mount point for volume in container
- `storageAcctName`: Storage account holding the Azure Files share
- `envVars`: Array of environmental variables to pass to the container. Must be an JSON array of objects, each with `name` and `value` properties. e.g. `[ {"name": "MOOD_VAR", "value": "I am happy!" } ]`. Not mandatory.

### Outputs
- `newContainerURL`: URL of new container including public IP
- `newContainerState`: State of the container

### Notes

- Storage account and share should exist prior to deployment