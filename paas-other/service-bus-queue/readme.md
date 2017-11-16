# Azure Service Bus & Queue
Create Service Bus namespace and queue within that namespace. A key is created on the queue with 'Listen' permissions 


### Deployed Resources
- Azure Service Bus
- Service Bus Queue


### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-other%2Fservice-bus-queue%2Fazuredeploy.json)  


### Parameters
- `serviceBusPrefix`: Prefix part of the Service Bus namespace
- `queueName`: Name of the queue to create


### Notes
The Service Bus name will be appended with a unique string