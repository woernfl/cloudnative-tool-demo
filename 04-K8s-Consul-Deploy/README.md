# Consul deployement

## Deploy Consul using Helm

```bash
kubectl apply -f namespace.yaml
```

```bash
helm upgrade --install --namespace traefik-ingress-controller consul-traefik-backend -f values.yaml stable/consul --tls
```

```bash
kubectl port-forward --namespace traefik-ingress-controller consul-traefik-backend-0 8500:8500
```

```bash
helm delete --purge consul-traefik-backend --tls
```