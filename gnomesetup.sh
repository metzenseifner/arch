#!/bin/bash

#yaourt -Sy
declare -a Pacs=(
'macos-icon-theme'
'macos-arc-white-theme'
'capitaine-cursors'
);
for i in ${Pacs[@]}; do
  yaourt -S $i --noconfirm
done

# List gnome installed themes
#gsettings list-recursively org.gnome.desktop.interface
#gsettings list-keys org.gnome.desktop.interface 
# GTK
gsettings set org.gnome.desktop.interface gtk-theme "macOS-Arc-White"
# Icons
gsettings set org.gnome.desktop.interface icon-theme "macOS"
# Windows
gsettings set org.gnome.desktop.wm.preferences theme ""
# Cursor
gsettings set org.gnome.desktop.interface cursor-theme "Capitain"
# Buttons left (uses : separator )
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"

# lightdm login screen
yaourt -S lightdm-webkit-theme-litarvan
