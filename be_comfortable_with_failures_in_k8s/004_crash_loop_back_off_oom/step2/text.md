# Step 2: Fix the OOM Error

Now that we have verified the OOM error, let's fix it by increasing the memory limit.

## 1. Edit the Deployment
Run the following command to edit the deployment:

```sh
kubectl edit deployment oom-test
```

This will open the deployment YAML file in an editor.

## 2. Increase the Memory Limit

Find the section under resources:

```
resources:
  limits:
    memory: "100Mi"
  requests:
    memory: "50Mi"
```

Change the memory limit from 100Mi to 200Mi:

```
resources:
  limits:
    memory: "200Mi"
  requests:
    memory: "100Mi"
```

Save and exit the editor.

## 3. Apply the Changes
After editing, restart the pod to apply the new memory limit:

```sh
kubectl delete pod -l app=oom-test
```

## 4. Verify the Fix

Wait a few seconds, then check the pod status again:

```sh
kubectl get pods
```

If the fix is applied correctly, the pod should now be running without restarting due to OOM.

You can confirm by checking events:

```sh
kubectl get events --sort-by=.metadata.creationTimestamp | grep -i oom
```

If no new OOM errors appear, congratulations! 🎉 You have successfully fixed the OOM issue.

This ensures the user not only identifies the OOM issue but also learns how to fix it by increasing the memory limits. Let me know if you need further refinements! 🚀
