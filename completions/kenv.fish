set -e kubenv
set -l kubenv "(find ~/.kube/ -maxdepth 1 -type f \( ! -iname 'kubectx' \) -exec basename {} \; )"
complete -f -c kenv -a $kubenv -d 'file names depending on which kubenv to link to'
