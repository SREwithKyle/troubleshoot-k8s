# Step 2: Fix the Issue

The pod is failing to schedule because of an invalid node affinity rule. We need to fix this by either:
1. Adding the missing label to a node.
2. Removing or modifying the affinity rule in `pod.yaml`.

## Fixing the Issue:

### Option 1: Add the missing label to a node:

```sh
kubectl label nodes <your-node-name> non-existent-label=true
```

Find your node name using:

```sh
kubectl get nodes --show-labels
```

### Option 2: Modify `pod.yaml` to remove or change the affinity rule.


Apply Changes:
Once you have made the changes, delete the existing pod and recreate it:

```sh
kubectl delete pod test-node-affinity
kubectl apply -f /root/pod.yaml
```

Finally, check if the pod is running:

```sh
kubectl get pods
```

```


