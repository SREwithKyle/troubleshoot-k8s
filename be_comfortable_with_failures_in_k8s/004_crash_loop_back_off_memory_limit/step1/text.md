# **Step 1: Verifying the CrashLoopBackOff Issue**

In this step, you will check the status of a pre-deployed Kubernetes pod that is failing due to an **Out of Memory (OOMKilled)** error caused by an extremely low memory allocation.

---

## **Task**

1. **Check the pod status** and confirm that it is in `CrashLoopBackOff`.
2. **Investigate the cause** of the failure and verify if it was due to an `OOMKilled` event.

---

## **Check Pod Status**

Run the following command:

```sh
kubectl get pods
```

You should see output similar to:

```
NAME                      READY   STATUS             RESTARTS   AGE
liveness-fail-xxxxx       0/1     CrashLoopBackOff   3          1m
```

This confirms that the pod is repeatedly crashing.

---

## **Investigate the Failure**

### **1. Check if it's part of a Deployment**
Verify whether the pod is managed by a **Deployment**:

```sh
kubectl get deploy
```

If `liveness-fail` appears in the list, it's being controlled by a Deployment.

---

### **2. Describe the Pod to Find the Error**
Run the following command to get more details:

```sh
kubectl describe pod -l app=low-memory
```

Look for a termination reason under **Containers → State → Last State → Terminated**, such as:

```
State:        Terminated
Reason:       OOMKilled
Exit Code:    137
```

- **`Reason: OOMKilled`** confirms that the container was killed due to an out-of-memory condition.
- **`Exit Code: 137`** indicates that the container was forcefully stopped due to memory exhaustion.

---

### **3. Check Kubernetes Events**
To view additional details on why the pod is failing:

```sh
kubectl get events --sort-by=.metadata.creationTimestamp
```

This will display logs of resource allocation failures, such as:

```
pod/liveness-fail-xxxxx  Killing    Container 'low-memory' in pod 'liveness-fail-xxxxx' exceeded memory limit.
```

---

### **4. View Pod Logs (Optional)**
If you suspect additional details before the crash, check the container logs:

```sh
kubectl logs -l app=low-memory --previous
```

If the pod keeps restarting, you may need to check logs from a previous instance using `--previous`.

---

## **Next Steps**
Once you confirm that the pod is being OOMKilled due to an insufficient memory limit, proceed to **Step 2** to fix it by adjusting resource allocations.

