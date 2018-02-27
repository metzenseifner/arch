# XFCE 4
sudo pacman -S --noconfirm xfce4 xfce4-goodies xarchiver pavucontrol
sudo pacman -S --noconfirm sddm
sudo sh -c "sddm --example-config > /etc/sddm.conf"

# SDDM Theme
yaourt -S --noconfirm archlinux-themes-sddm
sudo systemctl enable --now sddm

# Autologin
# not finished

# Icons
yaourt -S --noconfirm paper-icon-theme-git

# Theme
yaourt -S --noconfirm arc-gtk-theme

# Font
yaourt -S --noconfirm ttf-roboto

# Terminal Font
yaourt -S --noconfirm ttf-roboto-mono

# Audio
yaourt -S --noconfirm pavucontrol pulseaudio-alsa

# ffmpeg Hardware Accelerated Video for Raspberry Pi
yaourt -S --noconfirm ffmpeg-mmal
 
# Web Browser
yaourt -S --noconfirm chromium 
