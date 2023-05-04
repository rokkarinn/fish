function aws-profile
  aws sts get-caller-identity &> /dev/null
  if test $status -ne 0
    aws sso login --profile $argv
  end
  aws profile $argv
#  set -gx AWS_SECRET_ACCESS_KEY (grep -A 4 "\[$argv\]" ~/.aws/credentials | grep aws_secret_access_key | awk '{print $3}')
#  set -gx AWS_SESSION_TOKEN (grep -A 4 "\[$argv\]"  ~/.aws/credentials | grep aws_session_token | awk '{print $3}')
#  set -gx AWS_ACCESS_KEY_ID (grep -A 4 "\[$argv\]"  ~/.aws/credentials | grep aws_access_key_id | awk '{print $3}')
  set -gx AWS_PROFILE $argv
  set -gx AWS_DEFAULT_REGION "eu-central-1"
  echo Profile switched to $argv
end
