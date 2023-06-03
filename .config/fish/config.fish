if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sys_sleep
    sudo systemctl suspend
end

function slock
    i3lock -c 000000 & && sys_sleep
end

function lock
    i3lock -c 000000
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
    while true
        xdotool key 0x0
	sleep 60
    end
end

# lf
set -gx EDITOR nvim
set -gx LF_BOOKMARK_PATH /home/leo/.config/lf/bookmarks
