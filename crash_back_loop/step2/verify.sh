#!/bin/bash

kubectl get pods | grep "webapp" | grep "Running" &> /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Success! The pod is running."
    exit 0
else
    echo "❌ The pod is not running yet. Fix it before proceeding."
    exit 1
fi
