
# Autostart applications
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
# nitrogen --restore; sleep 1; 
feh --bg-fill "$HOME/Wallpapers/1.png" &

picom -b &
numlockx on &
nm-applet &
volumeicon &
dunst &
blueman-applet &

# sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &
