function aws-profile
  if string match -eq $argv 'dev' 'stage' 'prod' 
    aws profile $argv
    aws-mfa 
    echo Profile switched to $argv
  else
    echo "$argv is not an aws profile."
  end
end
