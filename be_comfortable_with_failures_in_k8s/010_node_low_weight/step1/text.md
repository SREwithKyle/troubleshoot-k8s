# Step 1: Apply the Pod and Observe Scheduling

The pod has **preferred node affinity**, meaning it will attempt to schedule on a node with `slow-node=true`, but it will still schedule elsewhere if necessary.

## Instructions:

1. Apply the pod manifest:

```sh
kubectl apply -f /root/pod.yaml
```

2. Wait a few seconds, then check where the pod is scheduled:

```sh
kubectl get pods -o wide
```

3. Note the node where the pod is placed.

### Expected Outcome:

- If a node with slow-node=true exists, the pod should be scheduled there.
- If no such node exists, the pod will be scheduled on another available node.
