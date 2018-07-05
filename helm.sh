# brew install kubernetes-helm

# Ket noi vao cluster truoc khi chay nhung cau lenh duoi

helm init

helm init --upgrade

kubectl create serviceaccount --namespace kube-system tiller

kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

echo "Install Helm Done"