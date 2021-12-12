#!/bin/bash

## Script to set postinstall mate configs

app=freaxmate-config

dconf load / < /usr/share/manjaro-freaxmate-settings/shortcuts/marco-shortcuts.txt
dconf load / < /usr/share/manjaro-freaxmate-settings/theming/terminal-palette.txt
dconf load / < /usr/share/manjaro-freaxmate-settings/theming/multiload-applet-colors.txt

echo -e "export HISTCONTROL=ignoreboth:erasedups" >> /home/$USER/.bashrc

mate-panel --replace

#Remove the .desktop entry in HOME user folder
rm $HOME/.config/autostart/$app.desktop

