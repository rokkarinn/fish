set -l awsprofile "(aws configure list-profiles)"
complete -f -c aws-profile -a $awsprofile
