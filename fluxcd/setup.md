# Setup

## Configuraton

Set the following env vars:

```
GITHUB_TOKEN
```

## Installation
 
Bootstrapping cluster with flux:

```
flux bootstrap github \
  --token-auth \
  --owner=j6nca \
  --repository=k8s-lab \
  --branch=main \
  --path=fluxcd/clusters/home \
  --personal \
  --private=false
```