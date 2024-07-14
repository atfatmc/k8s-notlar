# PostgreSQL HA With Bitnami

Vagrant ile 6 adet sunucu hazırlanır.

## Bitnami PostgreSQL-HA

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```

## PostgreSQL HA Kurulumu

```bash
helm install postgresql-ha bitnami/postgresql-ha -f values.yaml
```

```bash
PostgreSQL can be accessed through Pgpool via port 5432 on the following DNS name from within your cluster:

    postgresql-ha-pgpool.default.svc.cluster.local

Pgpool acts as a load balancer for PostgreSQL and forward read/write connections to the primary node while read-only connections are forwarded to standby nodes.

To get the password for "postgres" run:

    export POSTGRES_PASSWORD=$(kubectl get secret --namespace default postgresql-ha-postgresql -o jsonpath="{.data.password}" | base64 -d)

To get the password for "repmgr" run:

    export REPMGR_PASSWORD=$(kubectl get secret --namespace default postgresql-ha-postgresql -o jsonpath="{.data.repmgr-password}" | base64 -d)

To connect to your database run the following command:

    kubectl run postgresql-ha-client --rm --tty -i --restart='Never' --namespace default --image docker.io/bitnami/postgresql-repmgr:16.3.0-debian-12-r15 --env="PGPASSWORD=$POSTGRES_PASSWORD" --command -- psql -h postgresql-ha-pgpool -p 5432 -U postgres -d postgres

To connect to your database from outside the cluster execute the following commands:

    kubectl port-forward --namespace default svc/postgresql-ha-pgpool 5432:5432 &
    apt install postgresql-client postgresql-client-common
    psql -h 127.0.0.1 -p 5432 -U postgres -d postgres
```

```bash
POSTGRES_PASSWORD=1eoXnm7btu
REPMGR_PASSWORD=agbOILfOis
```

# Test Adımları

## Pod Durumunu Kontrol Etme

```bash
kubectl get pods |grep postgresql-ha
kubectl exec -it postgresql-ha-postgresql-0 -- cat /bitnami/postgresql/conf/postgresql.conf
kubectl exec -it postgresql-ha-postgresql-0 -- cat /bitnami/postgresql/conf/pg_hba.conf
```

```bash
POD_NAME=$(kubectl get pods -l app.kubernetes.io/name=postgresql-ha -o jsonpath='{.items[0].metadata.name}')
echo $POD_NAME

kubectl exec -it $POD_NAME -- psql -U myuser -d mydatabase
```