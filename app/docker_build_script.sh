docker build -t cloud-app .
docker tag cloud-app sumedhpatkar/cloud-app:latest
docker push sumedhpatkar/cloud-app:latest

minikube start

kubectl delete deployment cloud-app-deployment
kubectl delete service cloud-app-deployment


kubectl apply -f kube-deployment.yaml
kubectl get pods