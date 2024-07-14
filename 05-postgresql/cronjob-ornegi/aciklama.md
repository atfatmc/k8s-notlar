# CSV Verilerini Veritabanına Ekleme

Bu CronJob örneğinde, belirli bir zaman diliminde çalışarak CSV dosyasındaki verileri PostgreSQL veritabanındaki bir
tabloya ekleyecektir. CronJob belirli aralıklarla çalışacak ve bu görevi yerine getirecektir.

```bash
kubectl apply -f pvc-csv.yaml
kubectl apply -f csv-to-db-cronjob.yaml
```