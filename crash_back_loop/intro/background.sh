kubectl create deployment webapp --image=nginx
kubectl set image deployment/webapp nginx=invalidimage:latest
