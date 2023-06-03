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

# lf
set -gx EDITOR nvim
set -gx LF_BOOKMARK_PATH /home/leo/.config/lf/bookmarks
