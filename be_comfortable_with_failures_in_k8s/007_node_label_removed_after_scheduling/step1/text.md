# Step 1: Label the Node

The pod in this scenario requires a node with the label `env=testing`. First, you will add this label to `node01`.

## Instructions:

1. Run the following command to add the label:

```sh
kubectl label nodes node01 env=testing
```

2. Verify that the label has been applied:

```sh
kubectl get nodes --show-labels
```

Once the label is added, proceed to the next step.
