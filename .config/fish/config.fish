if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sys_sleep
    sudo systemctl suspend
end

function ddc
    sudo modprobe i2c-dev
    if count $argv > /dev/null
        sudo ddcutil setvcp 10 $argv
    else
        sudo ddcutil getvcp 10
    end
end

set -gx LF_BOOKMARK_PATH /home/leo/.config/lf/bookmarks
