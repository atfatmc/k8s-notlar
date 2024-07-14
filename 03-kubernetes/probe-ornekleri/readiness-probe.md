```
apiVersion: v1
kind: Pod
metadata:
  name: readiness
spec:
  containers:
  - name: myapp
    image: myapp:latest
    readinessProbe:
      httpGet:
        path: /readiness
        port: 8080
      initialDelaySeconds: 5
      periodSeconds: 5
```