function kube_ns
  kubectl config set-context (kubectl config current-context) --namespace=$1
end