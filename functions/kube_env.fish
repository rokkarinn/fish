function kube_env
  if string match -eq $argv 'dev' 'stage' 'prod' 'central'
      kctx "cluster01.$argv.icelandairlabs.com"
  else
    echo "$argv is not an environmet I'm familiar with"
  end
end
