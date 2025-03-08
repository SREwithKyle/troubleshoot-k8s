# Step 2: Apply a NoExecute Taint to the Node

Now that the pod is running on `node01`, let's taint the node to see if the pod gets evicted.

## Instructions:

1. Apply the **NoExecute** taint:

```sh
kubectl taint nodes node01 critical=true:NoExecute
```

2. Verify that the taint has been added:

```sh
kubectl describe node node01 | grep Taints
```

3. Check the pod status:

```sh
kubectl get pods -o wide
```

### Expected Outcome:

- The pod should be evicted from node01 because it does not tolerate the NoExecute taint.
