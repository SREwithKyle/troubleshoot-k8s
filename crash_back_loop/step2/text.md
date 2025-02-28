
---

### **5️⃣ `step2.md` (Troubleshooting Step 2)**
Explains how to fix the problem.

```md
## Step 2: Fix the Issue

The pod `webapp` has an incorrect container image. Fix it by updating the deployment:

```sh
kubectl set image deployment/webapp webapp=nginx:latest

Then restart the pod

```sh
kubectl rollout restart deployment webapp

Check Your work when done.