xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto --output eDP-1-1 --primary --mode 2560x1440 --rate 60.00 --dpi 210
xrdb -merge .Xresources
urxvtd -q -f -o
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
exec i3
