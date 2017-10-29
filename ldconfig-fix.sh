# Forcefully reinstall everything otherwise you might get "exists in filesystem" errors
pacman -Syyu $(pacman -Qnq) --force
