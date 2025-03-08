#!/bin/bash

POD_NODE=$(kubectl get pod test-taint-after-scheduling -o jsonpath='{.spec.nodeName}')
if [ "$POD_NODE" == "node01" ]; then
  echo "Pod is correctly scheduled on node01."
  exit 0
else
  echo "Pod is not scheduled on node01. Please check your node labels."
  exit 1
fi