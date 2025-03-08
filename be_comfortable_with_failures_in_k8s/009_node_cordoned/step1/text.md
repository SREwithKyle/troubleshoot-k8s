# Step 1: Label the Node and Cordon It

The pod in this scenario requires a node with the label `env=restricted`. You will label the node and then cordon it to prevent new pods from being scheduled.

## Instructions:
1. Label `node01` with `env=restricted`:

```sh
kubectl label nodes node01 env=restricted
```

2. Verify that the label has been added:

```sh
kubectl get nodes --show-labels
```

3. Cordon the node to prevent scheduling:

```sh
kubectl cordon node01
```

4. Verify that the node is now cordoned:

```sh
kubectl get nodes
```

Once the label is added and the node is cordoned, proceed to the next step.


