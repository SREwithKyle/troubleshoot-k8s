# Step 1: Verifying the CrashLoopBackOff Issue

In this step, you will check the status of a pre-deployed Kubernetes pod that is failing due to a misconfigured command.

## Task

1. Check the pod status and confirm that it is in `CrashLoopBackOff`.
2. Investigate the cause of the failure.

### Check Pod Status

Run the following command:

```sh
kubectl get pods
```

You should see something like:

```
NAME                      READY   STATUS             RESTARTS   AGE
liveness-fail-xxxxx       0/1     CrashLoopBackOff   3          1m
```

### Investigate the Failure

Check if it's associated with deployment by `kubectl get deploy`

To find out why the deployment is failing, describe it with

```sh
kubectl describe pod -l app=liveness-fail
```

Look for an error message like:

```
Liveness probe failed: HTTP probe failed with status code: 404
```

Since the app is running, but the probe is failing, the issue is likely due to a misconfigured liveness probe.

Once you confirm the issue, proceed to Step 2 to fix it.
