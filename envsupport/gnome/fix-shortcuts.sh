#!/bin/zsh
# I like to to have a workspace matrix of three by three for virtual desktops
# I like to use Super<1..9> to switch to them, so I have to remove and shortcuts in
# a couple places.

# First, remove the "app hotkeys" in dash to dock
echo "===> Removing app-hotkey settings from dash-to-dock"
for i in {1..9}; do gsettings set "org.gnome.shell.extensions.dash-to-dock" "app-hotkey-$i" "[]"; done

echo "Current value of app-hotkey: =====>"
gsettings list-recursively | grep "app-hotkey" | grep '[1-9]'

echo "===> Removing shifted app-hotkey settings from dash-to-dock"
for i in {1..9}; do gsettings set "org.gnome.shell.extensions.dash-to-dock" "app-shift-hotkey-$i" "[]"; done
echo "Current value of app-shift-hotkey: =====>"
gsettings list-recursively | grep "app-shift-hotkey" | grep '[1-9]'


# second, set the switch to workspace ones to be correct
echo "===> Setting switch-to-workspace shortcuts to <Super>#"
for i in {1..9}; do gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$i" "['<Super>$i']"; done
echo "Current value of switch-to-workspace: =====>"
gsettings list-recursively | grep "switch-to-workspace" | grep '[1-9]'

# third, set the move to workspace ones to be correct
echo "===> Setting move-to-workspace shortcuts to <Super><Shift>#"
for i in {1..9}; do gsettings set "org.gnome.desktop.wm.keybindings" "move-to-workspace-$i" "['<Super><Shift>$i']"; done
echo "Current value of move-to-workspace: =====>"
gsettings list-recursively | grep "move-to-workspace" | grep '[1-9]'
