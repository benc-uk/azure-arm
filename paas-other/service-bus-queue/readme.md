# Azure Service Bus & Queue
Create Service Bus namespace and queue within that namespace. A key is created on the queue with 'Listen' permissions 


### Deployed Resources
- Azure Service Bus
- Service Bus Queue


### Quick Deploy
[![deploy](https://user-images.githubusercontent.com/14982936/29083503-e23aa98c-7c60-11e7-8436-5f3c32b9d8e3.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fservice-bus-queue%2Fazuredeploy.json)  


### Parameters
- `serviceBusPrefix`: Prefix part of the Service Bus namespace
- `queueName`: Name of the queue to create


### Notes
The Service Bus name will be appended with a unique string