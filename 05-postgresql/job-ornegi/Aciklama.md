# Yedekleme Almak

Bu Job örneğinde PostgreSQL veritabanından bir yedekleme alınacaktır. Job, yalnızca bir kez çalışacak ve belirli bir
komutu yürütecektir.

```bash
kubectl apply -f job-pv.yaml
kubectl apply -f job-pvc.yaml
kubectl apply -f job-cron.yaml
```