function kube-dashboard-token
    kubectl -n kube-system get secrets (kubectl -n kube-system get serviceaccount kubernetes-dashboard-admin -o json | jq -r '.secrets[0].name') -o json | jq -r '.data.token'
end

