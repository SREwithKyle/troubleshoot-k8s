# Step 4: Reapply the Pod and Observe the Behavior

Now that the label has been removed, try reapplying the pod to see what happens.

## Instructions:

1. Delete the existing pod:

```sh
kubectl delete pod test-node-label-removal
```

2. Reapply the pod manifest:

```sh
kubectl apply -f /root/pod.yaml
```

3. Check the pod status:

```sh
kubectl get pods
```

### Expected Outcome:

The pod should now be in Pending state because no node matches its nodeSelector.