function kube_env
  switch (echo $argv)
  case rancher default rancher-onprem
      echo "Switching to $argv config"
      export KUBECONFIG="/Users/ivar/.kube/$argv"
  case '*'
    echo "$argv is not an environmet I'm familiar with"
    export KUBECONFIG=""
  end
end
