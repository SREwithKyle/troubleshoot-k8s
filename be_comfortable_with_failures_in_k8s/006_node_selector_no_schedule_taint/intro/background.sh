alias k=kubectl
kubectl taint nodes node01 key=value:NoSchedule
kubectl apply -f /root/pod.yaml
