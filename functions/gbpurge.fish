function gbpurge
    git remote prune origin ;and git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
end

