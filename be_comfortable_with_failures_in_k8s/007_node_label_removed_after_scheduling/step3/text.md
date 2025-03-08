# Step 2: Apply the Pod and Verify It Is Running

Now that the node has been labeled, apply the pod and ensure it is scheduled.

## Instructions:

1. Apply the pod manifest:

```sh
kubectl apply -f /root/pod.yaml
```

2. Wait a few seconds, then check the pod status:

```sh
kubectl get pods
```

3. If the pod is in Running state, proceed to the next step.
