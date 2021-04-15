function kube_env
  if test -e ~/.kube/$argv
    echo "Switching to $argv config"
    export KUBECONFIG="/Users/ivar/.kube/$argv"
  else
    echo "$argv does not exist."
    export KUBECONFIG=""
  end
end
