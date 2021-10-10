#!/bin/bash

## Script to set postinstall mate configs

app=freaxmate-config

volctl_dconf="[/]
mixer-command='mate-volume-control'
osd-enabled=false
prefer-gtksi=false
show-percentage=true
vu-enabled=true
"

printf '%s\n' "$volctl_dconf" | dconf load /apps/volctl/

echo -e "export HISTCONTROL=ignoreboth:erasedups" >> /home/$USER/.bashrc

gsettings set org.mate.panel.applet.window-list-previews:/org/mate/panel/objects/window-list/prefs/ show-window-thumbnails false
gsettings set org.mate.panel.applet.workspace-switcher:/org/mate/panel/objects/object-1/prefs/ num-rows 2

gsettings set org.mate.Marco.global-keybindings run-command-terminal "<Primary><Alt>t"
gsettings set org.mate.control-center.keybinding:/org/mate/desktop/keybindings/custom0/ name 'Passwordsafe'
gsettings set org.mate.control-center.keybinding:/org/mate/desktop/keybindings/custom0/ action 'gnome-passwordsafe'
gsettings set org.mate.control-center.keybinding:/org/mate/desktop/keybindings/custom0/ binding '<Primary><Alt>s'

mate-layouts --volumecontrol volctl

#Remove the .desktop entry in HOME user folder

rm $HOME/.config/autostart/$app.desktop

