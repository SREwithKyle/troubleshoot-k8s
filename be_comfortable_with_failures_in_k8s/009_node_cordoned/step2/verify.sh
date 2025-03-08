#!/bin/bash

POD_STATUS=$(kubectl get pod test-node-affinity-cordoned -o jsonpath='{.status.phase}')
if [ "$POD_STATUS" == "Pending" ]; then
  echo "Pod is in Pending state as expected."
  exit 0
else
  echo "Pod is not in the expected state. Please check your setup."
  exit 1
fi