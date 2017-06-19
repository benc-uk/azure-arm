#!/bin/bash
#az provider list --query "[].namespace"
for rp in $( az provider list --query "[].namespace" -o tsv ); do
   echo ""
   echo "# $rp"
   az provider show -n $rp --query "resourceTypes[].resourceType" -o tsv
done

