#!/bin/bash

# Change these parameters
STORAGE_ACCOUNT_NAME=bcmisc
RESOURCE_GROUP=Demo.Misc
LOCATION=westeurope
SHARE_NAME_PROJ=code-server-proj
SHARE_NAME_DATA=code-server-data

# Create the storage account with the parameters
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP -l $LOCATION --sku Standard_LRS -o table

# Export the connection string as an environment variable, this is used when creating the Azure file share
CONN_STR=$(az storage account show-connection-string -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP -o tsv)

# Create the shares
az storage share create -n $SHARE_NAME_PROJ --connection-string $CONN_STR -o table
az storage share create -n $SHARE_NAME_DATA --connection-string $CONN_STR -o table

# Get the account name
STORAGE_ACCOUNT=$(az storage account list --resource-group $RESOURCE_GROUP --query "[?contains(name,'$STORAGE_ACCOUNT_NAME')].[name]" -o tsv)
STORAGE_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP --account-name $STORAGE_ACCOUNT --query "[0].value" -o tsv)
echo ""
echo "====== Storage Account & Share Details ======"
echo "- Account Name: $STORAGE_ACCOUNT"
echo "- Account Key:  $STORAGE_KEY"
echo "- Resource Grp: $RESOURCE_GROUP"
echo "- Location:     $LOCATION"
echo ""
echo "Bye!"