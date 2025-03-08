# Node Affinity Issues

Node affinity allows you to set rules on where a pod should run based on node labels. We’ll simulate errors by creating affinity rules that cannot be satisfied.

## 1. Check Running Pods

Run the following command to see the list of running pods:

```sh
kubectl get pods
```

## 2. If the pod is in a Pending state, describe it to check for scheduling issues:


```sh
kubectl describe pod test-node-affinity
```

## 3. Look for any messages related to node affinity under the "Events" section.
