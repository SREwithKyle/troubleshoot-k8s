# Step 1: Label the Node and Apply the Pod

The pod is configured to schedule specifically on `node01`. You need to label the node so it matches the **nodeSelector**.

## Instructions:

1. Label `node01` with the required label:

```sh
kubectl label nodes node01 workload=critcal
```

2. Verify that the label has been added:

```sh
kubectl get nodes --show-labels
```

3. Apply the pod manifest:

```sh
kubectl apply -f /root/pod.yaml
```

4. Wait a few seconds and check if the pod is running:

```sh
kubectl get pods -o wide
```

### Expected Outcome:

- The pod should be scheduled on node01 since it matches the nodeSelector.