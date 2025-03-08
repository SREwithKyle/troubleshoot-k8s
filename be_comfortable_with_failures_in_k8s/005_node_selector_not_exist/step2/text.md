# Step 2: Fix the Issue

The pod is failing to schedule because of an invalid `nodeSelector`. We need to fix this by either:
1. Adding the missing label to a node.
2. Removing or modifying the `nodeSelector` in `pod.yaml`.

## Fixing the Issue:

Option 1: Add the missing label to a node:

```sh
kubectl label nodes <your-node-name> non-existent-label=true
```

Option 2: Modify pod.yaml to remove or change the nodeSelector.



## Apply Changes:

Once you have made the changes, delete the existing pod and recreate it:

```
kubectl delete pod test-node-selector
kubectl apply -f /root/pod.yaml
```


