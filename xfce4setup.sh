# XFCE 4
sudo pacman -S xfce4 xfce4-goodies xarchiver pavucontrol
sudo pacman -S sddm
sudo sh -c "sddm --example-config > /etc/sddm.conf"

# SDDM Theme
yaourt -S archlinux-themes-sddm
sudo systemctl enable --now sddm

# Autologin
# not finished

# Icons
yaourt -S paper-icon-theme-git

# Theme
yaourt -S arc-gtk-theme

# Font
yaourt -S ttf-roboto

# Terminal Font
yaourt -S ttf-roboto-mono

