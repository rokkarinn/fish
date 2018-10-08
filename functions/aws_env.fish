function aws_env
  if string match -e $argv 'dev' 'stage' 'prod'
    source "$HOME/.aws/$argv.env"
  else
    echo "$argv is not an environmet I'm familiar with"
  end
end
