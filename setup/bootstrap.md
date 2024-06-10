# bootstrap

## external-secrets operator

## 1Password connect

We are using 1Password to store our secrets. More info here: https://developer.1password.com/docs/connect/pricing/

```
kubectl create secret generic op-credentials -n secret-ops --from-file=1password-credentials.json
kubectl create secret generic onepassword-token -n secret-ops --from-literal=token=$TOKEN
```