function varclear --description 'Remove duplicates from environment variable'
    if test (count $argv) = 1
        set -l newvar
        set -l count 0
        for v in $$argv;
            if contains -- $v $newvar
                set count (math $count+1)
            else
                set -a newvar $v
            end
        end
        set -U -e $argv
        set -U $argv $newvar
        test $count -gt 0
        and echo Removed $count duplicates from $argv
    else
        for a in $$argv;
            varclear $a
        end
    end
end