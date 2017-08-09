# Webapp Firewall
Web App with IP restrictions and whitelist

### Deployed Resources
- Web App 
- App Service Plan

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-firewall%2Fazuredeploy.json)  

### Parameters
- `siteName`: Web app name (globally unique)
- `allowedIpAddress`: IP address allowed access the site
- `allowedIpMask`: Subnet mask for the IP

### Notes
The IP can denote a network e.g. with .0 in the address.  
The mask then can whitelist a ransge of IPs e.g. 
 - `allowedIpAddress` = 78.350.0.0
 - `allowedIpMask` = 255.255.0.0