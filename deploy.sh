#!/bin/bash

##### deploy.sh ################################################################
# Purpose: General purpose ARM template deployment script for Azure CLI 2.0
# Author:  Ben Coleman
# Date:    23-05-2017
# Version: 1.0
################################################################################

# Defaults
LOC='westeurope'
SUB='Microsoft Azure Internal Consumption'
HELP=false
VALIDATE=false;
DATE=`date +%Y%m%d_%H.%M.%S`

# Display usage
usage(){
echo "\
deploy.sh - Deploy an Azure resource template
Parameters:
    -f, --file           Input template file (required)
    [-g, --group]        Resource group to deploy to, will be created
    [-l, --location]     Region or location for the resource group, default: westeurope
    [-p, --parameters]   Parameter file, if ommited then <inputfile>.parameters.json is used
    [-s, --subscription] Azure subscription to use, default: 'Microsoft Azure Internal Consumption'
    [-h]                 Show this help text
" | column -t -s ";"
}

# Param handling stuff
OPTS=`getopt -o f:g:p:l:s:h --long file:,group:,location:,subscription:,parameters:,help -n 'parse-options' -- "$@"`
if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; usage; exit 1 ; fi
eval set -- "$OPTS"

# Param handling stuff
while true; do
  case "$1" in
    -f | --file ) FILE="$2"; shift; shift;;
    -g | --group ) GROUP="$2"; shift; shift;;
    -p | --parameters ) PARAMS="$2"; shift; shift;;
    -l | --location ) LOC="$2"; shift; shift;;
    -s | --subscription ) SUB="$2"; shift; shift;;
    -h | --help ) HELP=true; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

if [ ${HELP} = true ]; then 
  usage
  exit 0
fi

# We need the file param at a minimum
if [ -z ${FILE} ]; then
  usage
  exit 1
fi
# Make up a res group name if it's not supplied, Temp.GroupXXXXX where X is random number
if [ -z ${GROUP} ]; then
  GROUP=Temp.Group$(shuf -i 1-100000 -n 1)
  echo "WARN: Group name not supplied, $GROUP will be used"
fi

# Parameter file can be inferred from the input template
PARAMS="${PARAMS:-${FILE::-5}.parameters.json}"

# Check Azure CLI is installed
if [ ! -x "$(command -v az)" ]; then
  echo "ERROR: Command 'az' not found, please install Azure CLI v2"
  exit 1
fi

# Create resource group and start deployment
echo "Will use Azure subscription '$SUB'..."
echo "Creating resource group '$GROUP' in region '$LOC'..."
az group create -n $GROUP -l $LOC -o table
echo "Deploying template '$FILE'..."
az group deployment create -g $GROUP --template-file "$FILE" --parameters "@${PARAMS}" --verbose --name "deployment_$DATE" 