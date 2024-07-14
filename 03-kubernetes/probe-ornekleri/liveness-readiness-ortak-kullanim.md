```
apiVersion: v1
kind: Pod
metadata:
  name: combined
spec:
  containers:
  - name: myapp
    image: myapp:latest
    livenessProbe:
      httpGet:
        path: /healthz
        port: 8080
      initialDelaySeconds: 3
      periodSeconds: 3
    readinessProbe:
      httpGet:
        path: /readiness
        port: 8080
      initialDelaySeconds: 5
      periodSeconds: 5
```