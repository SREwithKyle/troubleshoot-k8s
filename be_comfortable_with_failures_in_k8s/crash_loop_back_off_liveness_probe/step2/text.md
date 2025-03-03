# Step 2: Fixing the Liveness Probe Misconfiguration

In this step, you will fix the liveness probe by pointing it to the correct endpoint.

## Task

1. Edit the `deployment.yaml` directly using `kubectl edit`.
2. Update the liveness probe to point to `/health` instead of `/wealth`.
3. Save the changes and verify that the pod is now running.

### **Fix the Liveness Probe**
Run the following command to update the deployment:

```sh
kubectl edit deployment liveness-fail
```

Locate this section in the YAML file:

```
livenessProbe:
  httpGet:
    path: /wealth  # ❌ Wrong path
    port: 8080
  initialDelaySeconds: 5
  periodSeconds: 5
  failureThreshold: 3
```

Change /wealth to /health, then save and close the editor.

This will open the deployment configuration in a text editor.

### Verify the Fix
After applying the fix, check the pod status:

```sh
kubectl get pods
```

Expected output:

```
NAME                      READY   STATUS    RESTARTS   AGE
liveness-fail-xxxxx       1/1     Running   0          1m
```

If the pod is now running, you have successfully fixed the issue!

Final Check
Confirm that the liveness probe is now passing:

```sh
kubectl describe pod -l app=liveness-fail | grep "Liveness probe"
```

You should no longer see failure messages.

🎉 Congratulations! You have successfully troubleshot and fixed a CrashLoopBackOff caused by a misconfigured liveness probe.
