# Step 1: Check Pod Status

First, check whether the pod is running or stuck in a `Pending` state.

## Instructions:
1. Run the following command to list all pods:

```sh
kubectl get pods
```

2. If the pod is in a Pending state, describe it to check for scheduling issues:

```sh
kubectl describe pod test-node-selector-tainted
```

3. Look for any messages related to nodeSelector or taints under the "Events" section.

