#!/bin/bash

POD_STATUS=$(kubectl get pod test-taint-after-scheduling -o jsonpath='{.status.phase}' 2>/dev/null)

if [ -z "$POD_STATUS" ]; then
  echo "Pod has been evicted as expected."
  exit 0
else
  echo "Pod is still running. Check if the taint was applied correctly."
  exit 1
fi