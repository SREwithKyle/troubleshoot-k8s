# Step 3: Uncordon the Node and Observe the Pod

Since the pod is not being scheduled due to the node being cordoned, you need to uncordon the node.

## Instructions:

1. Run the following command to uncordon `node01`:

```sh
kubectl uncordon node01
```

2. Check the node status:

```sh
kubectl get nodes
```

3. Verify if the pod is now running:

```sh
kubectl get pods
```

### Expected Outcome:

Once the node is uncordoned, the pod should move from Pending to Running.