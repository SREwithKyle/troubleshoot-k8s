# Step 2: Fixing the Out of Memory (OOMKilled) Issue

In this step, you will fix the **CrashLoopBackOff** issue caused by an Out of Memory (OOMKilled) event due to insufficient memory allocation.

## **Task**

1. Edit the `deployment.yaml` directly using `kubectl edit`.
2. Increase the memory limits to provide sufficient resources for the application.
3. Save the changes and verify that the pod is now running.

---

## **Fix the Memory Limit**

Run the following command to update the deployment:

```sh
kubectl edit deployment liveness-fail
```

Locate this section in the YAML file:

```yaml
resources:
  requests:
    memory: "4Mi"  # ❌ Too low
  limits:
    memory: "4Mi"  # ❌ Too low
```

Change the memory values to provide more memory, such as:

```yaml
resources:
  requests:
    memory: "50Mi"
  limits:
    memory: "100Mi"
```

Save and close the editor.

This will apply the new memory limits to the deployment, allowing the application to run without exceeding its memory allocation.

---

## **Verify the Fix**

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

---

## **Final Check**

Confirm that the pod is no longer being OOMKilled:

```sh
kubectl describe pod -l app=low-memory | grep "OOMKilled"
```

You should no longer see any `OOMKilled` messages.

---

🎉 **Congratulations!** You have successfully troubleshot and fixed a **CrashLoopBackOff** caused by an out-of-memory condition.

