function ports
    sudo lsof -iTCP -sTCP:LISTEN -n -P
end

