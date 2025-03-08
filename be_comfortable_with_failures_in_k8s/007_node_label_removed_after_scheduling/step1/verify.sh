#!/bin/bash

LABEL_CHECK=$(kubectl get node node01 --show-labels | grep "env=testing")

if [ -n "$LABEL_CHECK" ]; then
  echo "Node label successfully added. Proceed to the next step."
  exit 0
else
  echo "Node label not found. Please check your command."
  exit 1
fi