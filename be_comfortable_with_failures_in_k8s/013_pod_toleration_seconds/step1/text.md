# Step 1: Check Pod Status and Identify Scheduling Issues

The pod has strict requirements for **nodeSelector, nodeAffinity, and tolerations**, but it is failing to schedule.

## Instructions:

1. Check the pod's status:

```sh
kubectl get pods
```

2. If the pod is in a Pending state, describe it to investigate scheduling failures:

```sh
kubectl describe pod test-complex-failure
```

3. Look for messages under the Events section related to node selection or taints.