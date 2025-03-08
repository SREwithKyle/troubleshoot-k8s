alias k=kubectl

kubectl label nodes node01 workload=critcal
kubectl apply -f /root/deployment.yaml
sleep 5
kubectl label nodes node01 workload=critcal:NoExecute

