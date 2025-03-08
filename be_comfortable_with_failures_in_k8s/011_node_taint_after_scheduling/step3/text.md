# Step 3: Add a Toleration to Prevent Eviction

To allow the pod to stay on the tainted node, you must add a **toleration** in the pod manifest.

## Instructions:

1. Modify `pod.yaml` to include the following toleration:

```yaml
tolerations:
    - key: "critical"
    operator: "Equal"
    value: "true"
    effect: "NoExecute"
```

2. Delete the existing pod:

```sh
kubectl delete pod test-taint-after-scheduling
```

3. Apply the updated pod:

```sh
kubectl apply -f /root/pod.yaml
```

4. Check if the pod is now running:

```sh
kubectl get pods -o wide
```

### Expected Outcome:

- This time, the pod should remain running despite the NoExecute taint.