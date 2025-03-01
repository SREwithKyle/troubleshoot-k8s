# Step 1: Check Pod Status

A pod named `nginx_pod` is in error. Your task is to check its status and diagnose why it is failing.


## TODO: Create a file named `./pod_error.txt` and input the pod status into it.

eg. if the pod status is `Running`

```sh
echo "Running" > pod_error.txt
```

### Instructions:
1. Run the following command to check the pod status:
   ```sh
   kubectl get pods
  ```

2. Describe the nginx_pod pod to see detailed information about its failures:

```sh
kubectl describe pod nginx_pod
```

3. Check the pod events to identify why it is failing:

```sh
kubectl get events --sort-by=.metadata.creationTimestamp
```



Once you've finished the `TODO`, continue to the next step to resolve it.