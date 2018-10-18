export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/
python3 ./set_keybinding.py 'terminal' 'gnome-terminal' '<Alt>T' 1
python3 ./set_keybinding.py 'invert' 'xcalib -invert -alter' '<Alt>I' 0
python3 ./set_keybinding.py 'System Monitor' 'gnome-system-monitor' '<Primary><Alt>Delete' 0
python3 ./set_keybinding.py 'Suspend' 'systemctl suspend' '<Primary><Alt>Home' 0

python3 ./set_keybinding.py 'touchpad off' 'synclient TouchpadOff=1' '<Alt>N' 0
python3 ./set_keybinding.py 'touchpad on' 'synclient TouchpadOff=0' '<Alt>M' 0

python3 ./set_keybinding.py 'brightness up' 'python3 /home/echo/projects/brightness-redshift/light_adjust.py up' '<Primary><Super>Up' 0
python3 ./set_keybinding.py 'brightness down' 'python3 /home/echo/projects/brightness-redshift/light_adjust.py down' '<Primary><Super>Down' 0
python3 ./set_keybinding.py 'brightness right' 'python3 /home/echo/projects/brightness-redshift/light_adjust.py right' '<Primary><Super>Right' 0
python3 ./set_keybinding.py 'brightness left' 'python3 /home/echo/projects/brightness-redshift/light_adjust.py left' '<Primary><Super>Left' 0

# python3 ./set_keybinding.py 'rotate normal' 'xrandr --output eDP-1 --rotate normal' '<Super><Shift>Up' 0
# python3 ./set_keybinding.py 'rotate left' 'xrandr --output eDP-1 --rotate left' '<Super><Shift>Left' 0
# python3 ./set_keybinding.py 'rotate right' 'xrandr --output eDP-1 --rotate right' '<Super><Shift>Right' 0
# python3 ./set_keybinding.py 'rotate inverted' 'xrandr --output eDP-1 --rotate inverted' '<Super><Shift>Down' 0

### Keyboard Shorcut Catalogue:

# 'invert' > xcalib -invert -alter > Alt+I
# 'System Monitor' > gnome-system-monitor > Ctrl+Alt+Delete
# 'screengrab' > gnome-screenshot -a > Ctrl+Alt+4
# 'rotate normal' > xrandr --output eDP-1 --rotate normal > <Super>Up
# 'rotate left' > xrandr --output eDP-1 --rotate left > <Super>Left
# 'rotate right' > xrandr --output eDP-1 --rotate right > <Super>Right
# 'rotate inverted' > xrandr --output eDP-1 --rotate inverted > <Super>Down
# 'resolution small' > xrandr --output eDP-1 --mode 1792x1008_60.00 > Alt+Q
# 'resolution very big' > xrandr --output eDP-1 --mode 1920x1080 > Alt+V (very big)
# 'touchpad off' > synclient TouchpadOff=1 > Alt+N (no mouse)
# 'touchpad on' > synclient TouchpadOff=0 > Alt+M (mouse)
# 'brightness up' > python3 /home/echo/projects/brightness-redshift/light_adjust.py up > Shift+Alt+UP
# 'brightness down' > python3 /home/echo/projects/brightness-redshift/light_adjust.py down > Shift+Alt+DOWN
# 'brightness right' > python3 /home/echo/projects/brightness-redshift/light_adjust.py right > Shift+Alt+RIGHT
# 'brightness left' > python3 /home/echo/projects/brightness-redshift/light_adjust.py left > Shift+Alt+LEFT

