function kube_ns
    if kns | string match -eq "$argv"
        kns "$argv" 
    else
        echo "$argv is not a namespace I'm familiar with"
    end
end
