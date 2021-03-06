# Ubuntu VM with SSH Key Auth
Deploy Ubuntu VM and use SSH keyfile authentication


### Deployed Resources
- Microsoft.Compute/virtualMachines
- Microsoft.Network/publicIPAddresses
- Microsoft.Network/virtualNetworks
- Microsoft.Network/networkSecurityGroups
- Microsoft.Network/networkInterfaces


### Parameters
- `vmName`: The name and hostname of the VM 
- `vmSize`: Size of the VMs to deploy 
- `username`: User name for the VM admin account 
- `sshKey`: SSH rsa public key for the VM admin account 
- `ubuntuVersion`: The Ubuntu version for the VM 


### Outputs
- `publicIp`: Public IP of new VM 
- `sshConnectCommand`: Command to access VM with SSH


### Quick Deploy
[![deploy](https://raw.githubusercontent.com/benc-uk/azure-arm/master/etc/azuredeploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/)

### Notes

