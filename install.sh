kubectl create -f sc.yaml

kubectl create -f pv.yaml

# kubectl create -f pvc.yaml

kubectl create -f role.yaml

helm install -f values.yaml redis-ha