# ARM Template Collection

This is my set of useful basic ARM templates, covering a range of standard simple scenarios. It is grouped by IaaS / PaaS and then use-cases under that.  
There are some templates covering advanced or less well recorded ARM features.

For ease of management, the templates are grouped as a single template per folder with the standard name *azuredeploy.json* and supporting parameter file *azuredeploy.parameters.json*

---

# Supporting Files
- **deploy.ps1** - Standard-ish PowerShell script for deploying a template
- **deploy.sh**  - Standard-ish bash script for deploying a template with the Azure CLI
- **etc/all-resources.sh** - List all resource providers and their resource types
- **etc/All Azure Resources.md** - Formatted output of **etc/all-resources.sh**

## ARM Snippets for VS Code
The file [**etc/vscode-arm-snippets.json**](etc/vscode-arm-snippets.json) contains ARM helper snippets for use with VSCode when editing & creating ARM JSON files. To install and use this, start VS Code and go to: File -> Preferences -> User Snippets. Then select JSON from the list and *json.json* will be opened for editing. Take the [raw version](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/vscode-arm-snippets.json) of the snippets and copy and paste them into *json.json*

---

# Template Collection

## 2018 Update
As a refresh/quality control sweep, older templates have been moved to the 'old' folder, anything tested and worked has been moved up to top level and logically grouped by Azure service type

### [Azure Container Instances](container-instances/)

### [Azure App Service](app-service/)

