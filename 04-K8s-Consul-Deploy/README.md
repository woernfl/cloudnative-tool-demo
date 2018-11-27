# Consul deployement

## Deploy Consul using Helm

```bash
helm upgrade --install --namespace kube-system consul -f values.yaml stable/consul --tls
```
