# Vault deployement

## Deploy Vault

```bash
git clone --branch v0.2.1 https://github.com/hashicorp/vault-helm.git
helm upgrade --install --namespace=vault --values=values.yaml vault vault-helm/

# Check status
kubectl --namespace=vault exec -it vault-0 -- vault status

# Initialize Vault
kubectl --namespace=vault exec -it vault-0 -- vault operator init -n 1 -t 1

# Unseal vault
kubectl --namespace=vault exec -it vault-0 -- vault operator unseal $UNSEALKEY
```

## Delete Vault

```bash
helm delete --purge vault
```

