# Traefik deployement

## Deploy Traefik using Helm

```bash
helm upgrade --install --namespace kube-system traefik-ingress -f values.yaml stable/traefik --tls
```

```bash
helm delete --purge traefik-ingress --tls
```

## Deploy Traefik

```bash
kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin --user florian.woerner@onmyown.io
```

```bash
cd K8s-Deploy
kubectl apply -f clusterrole.yaml
kubectl apply -f clusterrolebinding.yaml
kubectl apply -f serviceaccount.yaml
kubectl apply -f configmap.yaml
kubectl apply -f daemonset.yaml
kubectl apply -f service.yaml
```

```bash
kubectl apply -f ui.yaml
```