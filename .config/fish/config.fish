if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sys_sleep
    sudo systemctl suspend
end

function lock_sleep
    i3lock & && sys_sleep
end

function ddc
    sudo modprobe i2c-dev
    if count $argv > /dev/null
        sudo ddcutil setvcp 10 $argv
    else
        sudo ddcutil getvcp 10
    end
end

function dpms
    if count $argv > /dev/null
    	xset s off
    else
    	xset s $argv $argv
    end
end

# lf
set -gx EDITOR nvim
set -gx LF_BOOKMARK_PATH /home/leo/.config/lf/bookmarks

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/leo/miniconda3/bin/conda
    eval /home/leo/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

