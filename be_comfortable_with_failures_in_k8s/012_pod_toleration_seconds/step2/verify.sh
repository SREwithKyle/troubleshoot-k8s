#!/bin/bash

sleep 25  # Wait longer than the previous eviction time

POD_STATUS=$(kubectl get pod test-complex-failure -o jsonpath='{.status.phase}')

if [ "$POD_STATUS" == "Running" ]; then
  echo "Pod is running and no longer evicted!"
  exit 0
else
  echo "Pod was still evicted. Check if the toleration was updated."
  exit 1
fi