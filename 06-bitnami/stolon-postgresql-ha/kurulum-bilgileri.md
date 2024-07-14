# PostgreSQL HA With Stolon

## PostgreSQL HA Kurulumu

```bash
kubectl create namespace etcd
kubectl apply -f etcd-deployment.yaml

kubectl create namespace postgresql
kubectl apply -f stolon-deployment.yaml

kubectl apply -f stolon-proxy-service.yaml
kubectl apply -f debug-pod.yaml
```

# Test Adımları

## Pod Durumunu Kontrol Etme

```bash
kubectl get pods -n etcd
kubectl get pods -n postgresql
kubectl run -i --tty --rm debug --image=postgres --namespace=postgresql -- psql -h stolon-proxy -U postgres

```

PG_PASSWORD=supersecretpassword

```bash
kubectl apply -f debug-pod.yaml
kubectl exec -it debug -n postgresql -- /bin/bash
psql -h stolon-proxy -U postgres
```