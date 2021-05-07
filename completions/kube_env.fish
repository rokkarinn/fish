complete -f -c kube_env -a "(ls -p ~/.kube/ | grep -v / | grep -v kubectx | xargs ls)"
