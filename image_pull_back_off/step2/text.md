## Step 2: Fix the Issue

Now that you've identified that the `nginx_pod` pod is failing due to an invalid image, let's fix it.

### Instructions:

1. Edit the `nginx_pod` pod specification interactively:   
  ```sh
  kubectl edit pod nginx_pod
  ```

2. Locate the spec.containers[0].image field, which currently has an invalid image:

```sh
spec:
  containers:
  - name: nginx_pod
    image: invalid-image:latest  # Change this
```

3. Replace invalid-image:latest with a valid image, such as nginx:latest:

```sh
spec:
  containers:
  - name: nginx_pod
    image: nginx:latest
```

4. Save and exit the editor. Kubernetes will attempt to pull the new image and restart the container.


Once the pod is running correctly, you've successfully resolved the issue!

### Alternatively, you could get the yaml, edit, and apply the changes to modify the pod

1. Get the YAML definition of the failing pod and save it to a file:
```sh
kubectl get pod nginx_pod -o yaml > nginx_pod.yaml
```

2. Open the nginx_pod.yaml file in a text editor and locate the image field under spec.containers. Update it to use a valid image, such as nginx:latest:

```sh
containers:
  - name: nginx_pod
    image: nginx:latest
```

3. Delete the metadata.uid, metadata.resourceVersion, and status fields from the YAML file to avoid conflicts.

4. Apply the modified YAML:

```sh
kubectl apply -f nginx_pod.yaml
```

5. Verify that the pod is now running:

```
kubectl get pods
```
