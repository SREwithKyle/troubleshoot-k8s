# Step 1: Verify Deployment

Kubernetes has already deployed the OOM test pod in the background. Your task in this step is to verify the deployment and check if the pod has restarted due to an Out Of Memory (OOM) error.

## 1. Check Running Pods
Run the following command to see the list of running pods:

```sh
kubectl get pods
```

You should see an output similar to:

```
NAME                        READY   STATUS      RESTARTS   AGE
oom-test-xxxxxxxxxx-xxxxx   0/1     OOMKilled   2          1m
```

If the STATUS shows OOMKilled and RESTARTS is greater than 0, the pod has crashed due to an OOM error.

## 2. Describe the Pod

Run the following command to inspect the pod’s details:

```sh
kubectl describe pod -l app=oom-test
```

Look for an event similar to:

```
State:        Terminated
  Reason:     OOMKilled
```

If the pod is running (STATUS: Running), wait a few seconds and re-run the kubectl get pods command.

