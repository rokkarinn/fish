function kube_env
  if string match -e $argv 'dev' 'stage' 'prod' 'central'
    set -gx KUBECONFIG "$HOME/.kube/$argv.icelandair"
  else
    echo "$argv is not an environmet I'm familiar with"
  end
end
