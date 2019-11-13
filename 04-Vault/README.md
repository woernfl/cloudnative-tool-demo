# Vault deployement

## Deploy Vault

```bash
git clone https://github.com/hashicorp/vault-helm.git
cd vault-helm
git checkout v0.2.0
helm install --namespace --name=vault .

# Check status
kubectl --namespace=vault exec -it vault-0 -- vault status

# Initialize Vault
kubectl --namespace=vault exec -it vault-0 -- vault operator init -n 1 -t 1

# Unseal vault
kubectl --namespace=vault exec -it vault-0 -- vault operator unseal $UNSEALKEY
```
