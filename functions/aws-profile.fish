function aws-profile
  if string match -eq $argv 'dev' 'stage' 'prod' 'mlradgjof'
    eval (op signin ivarmagda)
    aws profile $argv
    if string match -eq $argv 'dev' 'mlradgjof'
        set -gx MFA_STS_DURATION 21600
    else
        set -gx MFA_STS_DURATION 3600
    end
    if string match -eq $argv 'mlradgjof'
      op get totp PrivateAWS | aws-mfa --profile $argv
    else
      op get totp Amazon | aws-mfa --profile $argv
    end
    set -gx AWS_SECRET_ACCESS_KEY (grep -A 7 "\[$argv\]" ~/.aws/credentials | grep aws_secret_access_key | awk '{print $3}')
    set -gx AWS_SESSION_TOKEN (grep -A 7 "\[$argv\]"  ~/.aws/credentials | grep aws_session_token | awk '{print $3}')
    set -gx AWS_ACCESS_KEY_ID (grep -A 7 "\[$argv\]"  ~/.aws/credentials | grep aws_access_key_id | awk '{print $3}')
    set -gx AWS_PROFILE $argv
    set -gx AWS_DEFAULT_REGION "eu-west-1"
    echo Profile switched to $argv
  else
    echo "$argv is not an aws profile."
  end
end
