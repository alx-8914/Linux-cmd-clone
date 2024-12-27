kind create cluster -n dev
kind create cluster -n hml
kind create cluster -n prd
kind create cluster -n mgmt

kind get kubeconfig -n mgmt