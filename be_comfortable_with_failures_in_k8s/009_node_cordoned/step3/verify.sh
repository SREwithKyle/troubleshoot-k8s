#!/bin/bash

POD_STATUS=$(kubectl get pod test-node-affinity-cordoned -o jsonpath='{.status.phase}')
CORDONED_CHECK=$(kubectl get node node01 -o jsonpath='{.spec.unschedulable}')

if [ "$POD_STATUS" == "Running" ] && [ "$CORDONED_CHECK" != "true" ]; then
  echo "Pod is running and node is uncordoned successfully!"
  exit 0
else
  echo "Pod is not running or node is still cordoned. Please check your setup."
  exit 1
fi