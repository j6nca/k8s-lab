# bootstrap

## external-secrets operator

We use external-secrets operator as a generic secrets manager.
More info here: https://external-secrets.io/v0.5.7/provider-1password-automation/#setup-authentication

## 1Password connect

We are using 1Password to store our secrets.
More info here: https://github.com/1Password/connect-helm-charts/tree/main/charts/connect

```
# kubectl create secret generic op-credentials -n secret-ops --from-file=1password-credentials.json=./1password-credentials.json
kubectl create secret generic onepassword-token -n secret-ops --from-literal=token=$TOKEN
```

Note: Above method for creating `op-credentials` may not work, the credentials file needs to be double base64 encoded. Source: https://external-secrets.io/v0.5.7/provider-1password-automation/#setup-authentication
