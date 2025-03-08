#!/bin/bash

POD_NODE=$(kubectl get pod test-node-affinity-preferred -o jsonpath='{.spec.nodeName}')
NODE_LABEL=$(kubectl get node "$POD_NODE" --show-labels | grep "slow-node=true")

if [ -n "$NODE_LABEL" ]; then
  echo "Pod is now scheduled on a preferred node: $POD_NODE"
  exit 0
else
  echo "Pod is not scheduled on a preferred node. Check the label or constraints."
  exit 1
fi