alias k=kubectl
kubectl label nodes node01 env=restricted
kubectl cordon node01

kubectl apply -f /root/pod.yaml
