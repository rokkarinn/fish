set -l kubeenv "(ls -p ~/.kube/ | grep -v / | grep -v kubectx)"
complete -f -c kube_env -a $kubeenv
