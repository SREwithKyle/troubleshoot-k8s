POD_NODE=$(kubectl get pod test-node-affinity-preferred -o jsonpath='{.spec.nodeName}')
if [ -n "$POD_NODE" ]; then
  echo "Pod is scheduled successfully on node: $POD_NODE"
  exit 0
else
  echo "Pod is not scheduled. Please check the affinity settings."
  exit 1
fi