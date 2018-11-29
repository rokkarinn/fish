# kns
complete -f -c kns -a "(kubectl get ns -o=custom-columns=NAME:.metadata.name --no-headers)"
