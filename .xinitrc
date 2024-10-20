
picom &
xset s off -dpms
~/.scripts/statusbar/statusbar &
~/.fehbg &
setxkbmap -layout us,us -variant ,intl -option grp:ctrl_space_toggle
xmodmap ~/.Xmodmap
sxhkd &
autorandr --change home
exec dwm
