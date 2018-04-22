#!/usr/bin/env python3
import subprocess
import sys

"""
Source: https://askubuntu.com/questions/597395/how-to-set-custom-keyboard-shortcuts-from-terminal

Example: python3 /path/to/script.py 'open gedit' 'gedit' '<Alt>7'
Generic: python3 /path/to/script.py '<name>' '<command>' '<key_combination>'
"""

# defining keys & strings to be used
# subprocess.call(['export', 'GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/'])
key = "org.gnome.settings-daemon.plugins.media-keys custom-keybindings"
subkey1 = key.replace(" ", ".")[:-1]+":"
item_s = "/"+key.replace(" ", "/").replace(".", "/")+"/"
firstname = "custom"
# get the current list of custom shortcuts


def get(cmd): return subprocess.check_output(
    ["/bin/bash", "-c", cmd]).decode("utf-8")


if sys.argv[4] == 1:
    current = eval(get("gsettings get " + key)[3:])
else:
    current = eval(get("gsettings get " + key)[:])
print(current)
# make sure the additional keybinding mention is no duplicate
n = 1
while True:
    new = item_s + firstname + str(n)+"/"
    if new in current:
        n = n+1
    else:
        break
# add the new keybinding to the list
current.append(new)
# create the shortcut, set the name, command and shortcut key
cmd0 = 'gsettings set '+key+' "'+str(current)+'"'
cmd1 = 'gsettings set '+subkey1+new+" name '"+sys.argv[1]+"'"
cmd2 = 'gsettings set '+subkey1+new+" command '"+sys.argv[2]+"'"
cmd3 = 'gsettings set '+subkey1+new+" binding '"+sys.argv[3]+"'"

for cmd in [cmd0, cmd1, cmd2, cmd3]:
    subprocess.call(["/bin/bash", "-c", cmd])
