# Step 2: Fix the Issue

The pod is failing to schedule because `node01` has a `NoSchedule` taint applied, preventing it from accepting new pods.

## Fixing the Issue:
You have two options to fix this:

### Option 1: Remove the Taint from `node01`

Run the following command to remove the taint:

```sh
kubectl taint nodes node01 key=value:NoSchedule-
```

### Option 2: Add a Toleration to the Pod

Modify pod.yaml to add the following toleration under spec:

```
tolerations:
  - key: "key"
    operator: "Equal"
    value: "value"
    effect: "NoSchedule"
```

## Apply Changes:

Once you have made the changes, delete the existing pod and recreate it:

```sh
kubectl delete pod test-node-selector-tainted
kubectl apply -f /root/pod.yaml
```
