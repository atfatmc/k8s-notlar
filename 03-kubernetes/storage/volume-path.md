```
apiVersion: v1
kind: Pod
metadata:
  name: volume-example
spec:
  containers:
  - name: myapp
    image: myapp:latest
    volumeMounts:
    - name: my-volume
      mountPath: /data
  volumes:
  - name: my-volume
    hostPath:
      path: /mnt/data
```