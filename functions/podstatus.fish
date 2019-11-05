set -g podstatus_version 1.0.0

function podstatus -d "kubernetes pods status"
    if not set -q argv[1]
        echo "Missing arguments"
        echo "    run the podstatus like this:\n"
        echo "    podstatus <kubernetes-context> <all> \n"
        echo "    - <kubernetes-context> can be: dev, stage, or prod."
        echo "    - <all> is optional and will get pods from all namespaces if used."
        return 1
    else 
        set ContextName "cluster01.$argv[1].icelandairlabs.com"
    end

    if set -q argv[2]
        set t (kubectl get pods -o json --all-namespaces)
    else 
        set t (kubectl get pods -o json)
    end
    
    kubectl config use-context $ContextName > null
    set name $t | jq '.metadata[].name'
    echo $t | jq
    
end
