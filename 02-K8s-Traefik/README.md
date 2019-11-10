# Traefik deployement

## Deploy Traefik

```bash
kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin --user florian.woerner@onmyown.io
```

```bash
kubectl apply -f namespace.yaml
kubectl apply -f crd.yaml
kubectl apply -f rbac.yaml
kubectl apply -f svc.yaml
kubectl apply -f deploy.yaml
```

```bash
kubectl apply -f svc-admin.yaml
kubectl port-forward --address 0.0.0.0 service/traefik 8080:8080 -n traefik-ingress-controller
```

## Clean up

```bash
kubectl delete -f deploy.yaml
kubectl delete -f svc.yaml
kubectl delete -f crd.yaml
kubectl delete -f rbac.yaml
kubectl delete -f namespace.yaml
```
