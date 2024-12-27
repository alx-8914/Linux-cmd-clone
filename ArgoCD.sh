###  INSTALAÇÃO  ########
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

### instalando CLI ####
VERSION=$(curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION)
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/download/v$VERSION/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64

## alterando o service para loadbalancer ####
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

## criando portfoward para acesso #
kubectl port-forward svc/argocd-server -n argocd 8080:443

## Resgatando senha inicial #
argocd admin initial-password -n argocd

## add cluster -- INSERIR ENDPOIN NO .KUBE/CONFIG AO INVÉS DE 127.0.0.1
kubectl get endpoints
argocd cluster add kind-hml --name HML --kubeconfig /home/bruno/.kube/argo-config
