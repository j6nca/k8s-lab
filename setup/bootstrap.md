# bootstrap

## external-secrets operator

## 1Password connect

We are using 1Password to store our secrets. More info here: https://developer.1password.com/docs/connect/pricing/

```
kubectl create secret generic connect-credentials -n auth --from-file=1password-credentials.json
```