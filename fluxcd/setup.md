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

## Encryption

- https://fluxcd.io/flux/guides/mozilla-sops/

Setting up sops for in-line secret encryption:

```
export VERSION=v3.9.0
export BUILD=darwin.arm64
# Download the binary
curl -LO https://github.com/getsops/sops/releases/download/${VERSION}/sops-${VERSION}.${BUILD}

# Move the binary in to your PATH
mv sops-${VERSION}.${BUILD} /usr/local/bin/sops

# Make the binary executable
chmod +x /usr/local/bin/sops
```