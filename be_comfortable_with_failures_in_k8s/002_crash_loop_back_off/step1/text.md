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
NAME                                READY   STATUS             RESTARTS   AGE
crashloopbackoff-app-xxxxx-yyyyy    0/1     CrashLoopBackOff   3          1m
```

### Investigate the Failure

Check if it's associated with deployment by `kubectl get deploy`

To find out why the deployment is failing, describe it with

```sh
kubectl describe pod -l app=crashloopbackoff-app
```

Look for an error message like:

```
error during container init: exec: "./non_existent_binary": stat ./non_existent_binary: no such file or directory: unknown
```

This confirms that the container is trying to execute a non-existeng commnd.

Once you've confirmed the error, proceed to the next step to fix it.

