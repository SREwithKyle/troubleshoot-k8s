
#!/bin/bash

LABEL_CHECK=$(kubectl get node node01 --show-labels | grep "env=restricted")
CORDONED_CHECK=$(kubectl get node node01 -o jsonpath='{.spec.unschedulable}')

if [ -n "$LABEL_CHECK" ] && [ "$CORDONED_CHECK" == "true" ]; then
  echo "Node labeled and cordoned successfully. Proceed to the next step."
  exit 0
else
  echo "Node label or cordon status incorrect. Please check your commands."
  exit 1
fi
