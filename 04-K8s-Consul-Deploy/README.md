# Consul deployement

## Deploy Consul using Helm

```bash
helm upgrade --install --namespace kube-system consul-traefik-backend -f values.yaml stable/consul --tls
```
