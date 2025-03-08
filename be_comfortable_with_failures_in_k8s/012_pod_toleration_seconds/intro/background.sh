alias k=kubectl

# Label the node to match the pod's nodeSelector and nodeAffinity requirements
kubectl label nodes node01 app=critical zone=us-east-1a

# Apply a taint that prevents scheduling
kubectl taint nodes node01 restricted=true:NoSchedule

kubectl apply -f /root/deployment.yaml
