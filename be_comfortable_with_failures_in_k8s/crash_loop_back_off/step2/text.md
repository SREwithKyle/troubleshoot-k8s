### **Step 2: Fix the Issue by Upgrading to `:v2`

# Step 2: Fixing the CrashLoopBackOff Issue

In this step, you will update the deployment to use a corrected version (`:v2`) of the application, which runs the correct command.

## Task

1. Update the deployment to use `:v2` of the container image.
2. Then run `k get po -w` to monitor the new pod status

### Update Deployment

Run the following command to patch the deployment and use the fixed image:

```sh
kubectl set image deployment/crashloopbackoff-app handafew/crashloopbackoff-app:v2
```

or you could edit the deployment with `k edit deploy crashloopbackoff-app` and manually modify image tag to `v2`