#!/bin/bash

# Change these four parameters
ACI_PERS_STORAGE_ACCOUNT_NAME=acistore$RANDOM
ACI_PERS_RESOURCE_GROUP=Temp.Minecraft
ACI_PERS_LOCATION=eastus
ACI_PERS_SHARE_NAME=minecraft-vol

# Create the storage account with the parameters
az storage account create -n $ACI_PERS_STORAGE_ACCOUNT_NAME -g $ACI_PERS_RESOURCE_GROUP -l $ACI_PERS_LOCATION --sku Standard_LRS -o table

# Export the connection string as an environment variable, this is used when creating the Azure file share
export AZURE_STORAGE_CONNECTION_STRING=`az storage account show-connection-string -n $ACI_PERS_STORAGE_ACCOUNT_NAME -g $ACI_PERS_RESOURCE_GROUP -o tsv`

# Create the share
az storage share create -n $ACI_PERS_SHARE_NAME -o table

# Get the account name
STORAGE_ACCOUNT=$(az storage account list --resource-group $ACI_PERS_RESOURCE_GROUP --query "[?contains(name,'$ACI_PERS_STORAGE_ACCOUNT_NAME')].[name]" -o tsv)
STORAGE_KEY=$(az storage account keys list --resource-group $ACI_PERS_RESOURCE_GROUP --account-name $STORAGE_ACCOUNT --query "[0].value" -o tsv)
echo ""
echo "====== Storage Account & Share Details ======"
echo "- Account Name: $STORAGE_ACCOUNT"
echo "- Account Key:  $STORAGE_KEY"
echo "- Share Name:   $ACI_PERS_SHARE_NAME"
echo "- Resource Grp: $ACI_PERS_RESOURCE_GROUP"
echo "- Location:     $ACI_PERS_LOCATION"
echo ""
echo "Bye!"