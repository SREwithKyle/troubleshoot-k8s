#!/bin/bash

echo "🔍 Checking if the deployment is running successfully..."

# Check if the pod is in the "Running" state
if kubectl get pods -l app=oom-test --no-headers | grep -q "Running"; then
    echo "✅ The pod is running successfully!"
    exit 0
else
    echo "❌ The pod is not running. Please check the deployment."
    exit 1
fi
