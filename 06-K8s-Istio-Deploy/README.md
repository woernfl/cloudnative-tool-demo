# Consul deployement

## Deploy Istio using Helm

```bash
kubectl apply -f namespace.yaml
```

```bash
helm repo add istio.io https://storage.googleapis.com/istio-prerelease/daily-build/master-latest-daily/charts
```

```bash
helm dep update install/kubernetes/helm/istio
```

```bash
helm upgrade --install --namespace istio-system istio -f values.yaml istio.io/istio --tls
```

```bash
helm delete --purge istio --tls
```