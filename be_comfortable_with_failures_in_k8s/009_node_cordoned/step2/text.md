# Step 2: Apply the Pod and Verify It Is Pending

Now that the node is labeled and cordoned, apply the pod and observe the scheduling behavior.

## Instructions:

1. Apply the pod manifest:

```sh
kubectl apply -f /root/pod.yaml
```

2. Wait a few seconds, then check the pod status:

```sh
kubectl get pods
```

3. Describe the pod to find out why it is not being scheduled:

```sh
kubectl describe pod test-node-affinity-cordoned
```

Expected Outcome:

The pod should remain in Pending state because the only available node is cordoned.
