if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sys_sleep
    sudo systemctl suspend
end

set -gx LF_BOOKMARK_PATH /home/leo/.config/lf/bookmarks
