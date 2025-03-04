ssh-keygen -t ed25519 -C "your_email@example.com" -f ./setup/argocdkey
ssh-keygen -t ed25519 -C "your_email@example.com" -f ./setup/kargokey
kubectl apply -f ./setup/manifest/kargo-secret.yaml


helm install cert-manager ./setup/charts/cert-manager -f ./setup/values/cert-manager-values.yaml --create-namespace -n cert-manager
helm install argo-cd ./setup/charts/argo-cd -f ./setup/values/argo-values.yaml --create-namespace -n argo-cd
helm install kargo ./setup/charts/kargo -f ./setup/values/kargo-values.yaml --create-namespace -n kargo
