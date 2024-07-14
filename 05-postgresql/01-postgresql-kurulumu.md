# PostgreSQL & Kubernetes

## Persistence Volume, Volume Claim

```bash
kubectl apply -f pv-postgresql.yaml
kubectl apply -f pvc-postgresql.yaml

kubectl apply -f postgresql-deployment.yaml
kubectl apply -f postgresql-service.yaml

kubectl get pods
kubectl get services

kubectl get pvc
kubectl describe pod postgresql
```