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

clipmenud &
#systemctl --user import-environment DISPLAY

# display monitor
~/.screenlayout/nbc.sh

# Increase Keyboard Speed Button
xset r rate 300 50 &

# Change Capslock to ESC
setxkbmap -option caps:escape &
wmname LG3D &

# Loop dwm
#while true; do
#	dwm >/dev/null 2>&1
#done

# Start Dropbox
dbx start 

# change mouse click left to right
# xmodmap -e "pointer = 1 2 3" &
xmodmap -e "pointer = 3 2 1" &

# Start picom
picom -f &

# dim monitor
# xautolock -time 5 -locker slock &

# Setup wallpaper
feh --bg-scale ~/Dropbox/Photos/wp.jpg &

# Auto start ksnip, WA & Skype
#copyq &
ksnip &

# Whatsapp
#chromium /usr/bin/chromium --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm &

# Skype 
#chromium /usr/bin/chromium --profile-directory=Default --app-id=lljldmnnhjkandejalbjlndemhlcjepa &

# Gmail
#chromium /usr/bin/chromium --profile-directory=Default --app-id=fmgjjmmmlfnkbppncabfkddbjimcfncm &

# Turn on numlock
numlockx on &

dwmblocks &
exec dwm
