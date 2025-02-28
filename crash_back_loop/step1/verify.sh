---

### **6️⃣ `verify.sh` (Verification Script for Step 1)**
Checks if the user has identified the issue.

```sh
#!/bin/bash

kubectl get pods | grep "webapp" | grep "CrashLoopBackOff" &> /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Pod is in CrashLoopBackOff. Proceed to fix it."
    exit 0
else
    echo "❌ The pod is not in CrashLoopBackOff. Try again."
    exit 1
fi