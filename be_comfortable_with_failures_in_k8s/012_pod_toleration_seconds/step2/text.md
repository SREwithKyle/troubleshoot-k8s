# Step 2: Fix the Taint Issue

The **NoSchedule taint** on `node01` is preventing the pod from scheduling. To allow scheduling, you need to **add a proper toleration**.

## Instructions:

1. Modify the pod definition (`pod.yaml`) to include the following toleration:

```yaml
tolerations:
  - key: "restricted"
    operator: "Equal"
    value: "true"
    effect: "NoSchedule"
```

2. Delete & Re-apply the existing pod

```sh
kubectl delete pod test-complex-failure
kubectl apply -f /root/pod.yaml
```

3. Check if the pod is now running (within 20 seconds):

```sh
kubectl get pods -o wide
```

### Expected Outcome:

- The pod should now be scheduled on node01 since it can tolerate the NoSchedule taint.


## Verify Pod Eviction After 20 Seconds

Even though the pod is now scheduled, it **will be evicted after 20 seconds** due to the `tolerationSeconds: 20` setting.

## Instructions:
1. Monitor the pod for 20 seconds:

```sh
kubectl get pods -o wide --watch
```

2. If the pod disappears, check its event logs:

```sh
kubectl describe pod test-complex-failure
```

## Step 4: Allow Pod to Stay on Tainted Node

To prevent the pod from being evicted, modify its toleration to **remove the time limit**.

## Instructions:
1. Modify `pod.yaml` and update the toleration:

```yaml
tolerations:
  - key: "restricted"
    operator: "Equal"
    value: "true"
    effect: "NoExecute"

```
(Remove the tolerationSeconds: 20 line) 2. Delete the evicted pod:

```sh
kubectl delete pod test-complex-failure
```

3. Apply the updated pod:

```sh
kubectl apply -f /root/pod.yaml
```

4. Check if the pod remains scheduled:

```sh
kubectl get pods -o wide
```

### Expected Outcome:

- The pod should now remain on the node without eviction.
