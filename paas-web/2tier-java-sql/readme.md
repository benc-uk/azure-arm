# Java Webapp With Azure SQL DB
Create a Web App and Azure SQL instance, configure Web App to use Tomcat and Java 8

### Deployed Resources
- Web App
- App Service Plan
- Azure SQL Server
- Azure SQL DB

### Quick Deploy
[![deploy](http://files.bencoleman.co.uk/img/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbenc-uk%2Fazure-arm%2Fmaster%2Fpaas-web%2Fwebapp-2tier-sql%2Fazuredeploy.json)  

### Parameters
- `webSiteName`: Web app name (globally unique)
- `appSizingTier`: Size/SKU of app service
- `appInstanceCount`: Number of instances/workers
- `tomcatVersion`: The version of Tomcat to use (7.0, 8.0, 8.5)
- `dbName`: Name of the Azure SQL DB
- `dbAdminUser`: Admin user account to access the DB 
- `dbAdminPassword`: Password for DB admin account
- `dbSizingTier`: Size/SKU of Azure SQL instance 

### Notes
The Azure SQL Server name will be auto generated with a prefix of 'app-sqlsrv-' and an unique string