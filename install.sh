helm install cert-manager ./charts/cert-manager -f ./values/cert-manager-values.yaml --create-namespace -n cert-manager
helm install argo-cd ./charts/argo-cd -f ./values/argo-values.yaml --create-namespace -n argo-cd
helm install kargo ./charts/kargo -f ./values/kargo-values.yaml --create-namespace -n kargo