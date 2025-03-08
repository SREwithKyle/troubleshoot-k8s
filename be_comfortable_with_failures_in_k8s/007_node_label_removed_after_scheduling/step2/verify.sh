#!/bin/bash

POD_STATUS=$(kubectl get pod test-node-label-removal -o jsonpath='{.status.phase}')
if [ "$POD_STATUS" == "Running" ]; then
  echo "Pod is running successfully!"
  exit 0
else
  echo "Pod is not running. Please check your label and try again."
  exit 1
fi