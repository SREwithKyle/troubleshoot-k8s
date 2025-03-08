# Step 2: Add a Preferred Label and Reschedule

To influence scheduling, let's label a node and reschedule the pod.

## Instructions:

1. Find an available node and add the `slow-node=true` label:

```sh
kubectl label nodes node01 slow-node=true
```

2. Verify that the label has been added:

```sh
kubectl get nodes --show-labels
```

3. Delete the existing pod and apply it again:

```sh
kubectl delete pod test-node-affinity-preferred
kubectl apply -f /root/pod.yaml
```

4. Check where the pod is scheduled:

```sh
kubectl get pods -o wide
```

Expected Outcome:

- The pod should now prefer node01 for scheduling if no other constraints prevent it.