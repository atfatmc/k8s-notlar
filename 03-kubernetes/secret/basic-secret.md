```
apiVersion: v1
kind: Secret
metadata:
  name: my-secret
type: Opaque
data:
  username: YWRtaW4= # base64 encoded "admin"
  password: MWYyZDFlMmU2N2Rm # base64 encoded "1f2d1e2e67df"
```