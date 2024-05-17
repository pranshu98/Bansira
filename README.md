kubectl apply -f argocd-application.yaml
kubectl port-forward svc/argocd-server -n argocd 8080:443
checking
