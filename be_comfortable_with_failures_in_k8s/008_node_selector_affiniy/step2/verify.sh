#!/bin/bash

POD_STATUS=$(kubectl get pod test-node-affinity -o jsonpath='{.status.phase}')
if [ "$POD_STATUS" == "Running" ]; then
  echo "Pod is running successfully!"
  exit 0
else
  echo "Pod is still not running. Please check your changes."
  exit 1
fi