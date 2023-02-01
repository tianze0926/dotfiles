#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export QT_AUTO_SCREEN_SCALE_FACTOR=1

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

xinput --set-prop 'pointer:Logitech M585/M590' 'libinput Accel Speed' 0.9
xinput --set-prop 'MSFT0001:00 04F3:3138 Touchpad' 'libinput Accel Speed' 0.6
xinput --set-prop 'MSFT0001:00 04F3:3138 Touchpad' 'libinput Natural Scrolling Enabled' 1
xinput --set-prop 'MSFT0001:00 04F3:3138 Touchpad' 'libinput Tapping Enabled' 1
xinput --set-prop 'MSFT0001:00 04F3:3138 Touchpad' 'libinput Tapping Drag Lock Enabled' 1
autorandr --change

exec i3

