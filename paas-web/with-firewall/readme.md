# Webapp Firewall
Web App with IP restrictions and whitelist

### Deployed Resources
- Web App 
- App Service Plan

### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-firewall%2Fazuredeploy.json)  

### Parameters
- `siteName`: Web app name (globally unique)
- `allowedIpAddress`: IP address allowed access the site
- `allowedIpMask`: Subnet mask for the IP

### Notes
The IP can denote a network e.g. with .0 in the address.  
The mask then can whitelist a ransge of IPs e.g. 
 - `allowedIpAddress` = 78.350.0.0
 - `allowedIpMask` = 255.255.0.0