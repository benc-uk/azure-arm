# ARM Template Collection

This is my set of useful basic ARM templates, covering a range of standard simple scenarios. It is grouped by IaaS / PaaS and then use-cases under that.  
There are some templates covering advanced or less well recorded ARM features.

For ease of management templates are grouped as a single template per folder with the standard name *azuredeploy.json* and supporting parameter file *azuredeploy.parameters.json*

---

# Supporting Files
- **deploy.ps1** - Standard-ish PowerShell script for deploying a template
- **deploy.sh**  - Standard-ish bash script for deploying a template with the Azure CLI
- **etc/all-resources.sh** - List all resource providers and their resource types
- **etc/All Azure Resources.md** - Formatted output of **etc/all-resources.sh**

## ARM Snippets for VS Code
The file [**etc/vscode-arm-snippets.json**](etc/vscode-arm-snippets.json) contains ARM helper snippets for use with VSCode when editing & creating ARM JSON files. To install and use this, start VS Code and go to: File -> Preferences -> User Snippets. Then select JSON from the list and *json.json* will be opened for editing. Take the [raw version](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/vscode-arm-snippets.json) of the snippets and copy and paste them into *json.json*

---

# Template List

## IaaS Templates
#### IaaS Apps
- tomcat-mysql

#### IaaS Containers
- [simple-container](iaas-containers/simple-container/)

#### IaaS Linux VM
- custom-img
- ubuntu-existing-net
- ubuntu-multi-nic
- ubuntu-pwd
- ubuntu-ssh


## PaaS Templates
#### PaaS Other
- function-app-withcode
- iot-demo
- service-bus-queue

#### PaaS Web
- [2tier-dotnet-sql](paas-web/2tier-dotnet-sql/)
- [2tier-java-sql](paas-web/2tier-java-sql/)
- [dotnet-deployapp](paas-web/dotnet-deployapp/)
- [linux-acr-deploy](paas-web/linux-acr-deploy/)
- [linux-acr-existing](paas-web/linux-acr-existing/)
- [with-firewall](paas-web/with-firewall/)

## Other Templates
- [empty](empty/)
