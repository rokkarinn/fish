function aws_env
  if string match -eq $argv 'dev' 'stage' 'prod'
    aws-profile $argv
  else
    echo "$argv is not an environmet I'm familiar with"
  end
end
