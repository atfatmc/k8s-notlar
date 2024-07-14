# Vagrant
vagrant up

vagrant ssh default

Docker kurulumu için aşağıdaki internet sitesi takip edilebilir.

```bash
https://docs.docker.com/engine/install/ubuntu/
```

## Kurulum Adımları

```bash
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

cd /vagrant_data
docker build -t py-app .
docker run --name py_app  merhaba-app


## K3s Kurulumu

```bash
curl -sfL https://get.k3s.io | sh -
```

kubectl get pods
kubectl get pods --all-namespaces
kubectl get pods -n kube-system
kubectl get deployment -n kube-system
kubectl top pod -n kube-system
kubectl logs -f coredns-6799fbcd5-mv72h -n kube-system
kubectl logs -f coredns-6799fbcd5-mv72h -n kube-system --previous
kubectl get svc
kubectl exec -it traefik-7d5f6474df-p7fjj bash
kubectl describe pod traefik-7d5f6474df-p7fjj -n kube-system
kubectl get events -n kube-system
kubectl get configmap -n kube-system
kubectl get crd #custom resource



## Kurulum ve Yapılandırma

```bash
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
kubens default
```




## Helm Repository Kurulumu

```bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```



helm
helm ls # error verirse ( export KUBECONFIG=/etc/rancher/k3s/k3s.yaml ) 
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm repo list postgresql
helm install postgresql bitnami/postgresql



mkdir -p /mnt/data
kubectl apply -f postgresql-pv.yaml
kubectl get pv
kubectl get pvc
kubectl apply -f postgresql-deployment.yaml
kubectl exec -it postgresql-545fcccb44-fcjvq bash
psql -U testuser -d testdb
kubectl apply -f postgresql-service.yaml
kubectl get svc
