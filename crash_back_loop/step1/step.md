## Step 1: Check Pod Status

A pod named `webapp` is stuck in `CrashLoopBackOff`. Check its logs:

```sh
kubectl get pods
kubectl logs webapp
