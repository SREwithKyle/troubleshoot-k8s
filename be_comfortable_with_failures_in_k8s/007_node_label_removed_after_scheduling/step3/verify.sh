#!/bin/bash

POD_STATUS=$(kubectl get pod test-node-label-removal -o jsonpath='{.status.phase}')
LABEL_CHECK=$(kubectl get node node01 --show-labels | grep "env=testing")

if [ "$POD_STATUS" == "Running" ] && [ -z "$LABEL_CHECK" ]; then
  echo "Label removed, but the pod is still running as expected. Proceed to the next step."
  exit 0
else
  echo "Unexpected behavior. Check if the pod was evicted."
  exit 1
fi