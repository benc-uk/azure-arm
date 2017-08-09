# IoT Demo
This is a demo of IoT capabilities in Azure using IoT Hubs, Service Bus and Azure Function Apps.
Messages received at the IoT hub are placed on a Service Bus queue, from the queue they are picked up by the Azure Function and placed into blob storage as CSV files and into a table. 

Full details - https://github.com/benc-uk/azure-iot-demo

### Deployed Resources
- IoT Hub
- Service Bus
- Storage Account
- App Service
- Web App

### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fiot-demo%2Fazuredeploy.json)  

### Parameters
- `serviceBusName`: Service Bus namespace (globally unique)
- `iotHubName`: IOT Hub endpoint name (globally unique)
- `functionAppName`: Function App name (globally unique)

### Notes
