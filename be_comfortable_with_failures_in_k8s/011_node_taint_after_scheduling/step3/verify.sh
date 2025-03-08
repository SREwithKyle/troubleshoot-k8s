#!/bin/bash

POD_NODE=$(kubectl get pod test-taint-after-scheduling -o jsonpath='{.spec.nodeName}')
POD_STATUS=$(kubectl get pod test-taint-after-scheduling -o jsonpath='{.status.phase}')

if [ "$POD_NODE" == "node01" ] && [ "$POD_STATUS" == "Running" ]; then
  echo "Pod is running on node01 and tolerates the taint."
  exit 0
else
  echo "Pod is not running as expected. Check the toleration settings."
  exit 1
fi