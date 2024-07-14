```
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  containers:
  - name: myapp
    image: myapp:latest
    env:
    - name: APP_COLOR
      valueFrom:
        configMapKeyRef:
          name: my-config
          key: APP_COLOR
```