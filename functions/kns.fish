function kns

    if count $argv > /dev/null
        if kubens | string match -eq "$argv"
            kubens "$argv" 
        else
            echo "$argv is not a namespace I'm familiar with"
        end
    else
        kubens
    end
end
