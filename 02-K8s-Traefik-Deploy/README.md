# Traefik deployement

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
kubectl apply -f service.yaml
kubectl apply -f daemonset.yaml
```

```bash
kubectl apply -f ui.yaml
```

## Clean up

```bash
kubectl delete -f clusterrole.yaml
kubectl delete -f clusterrolebinding.yaml
kubectl delete -f serviceaccount.yaml
kubectl delete -f configmap.yaml
kubectl delete -f service.yaml
kubectl delete -f daemonset.yaml
```
