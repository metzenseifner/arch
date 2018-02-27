yaourt -Sy pulseaudio-alsa pulseaudio-bluetooth pavucontrol bluez blueman pi-bluetooth
systemctl enable --now bluetooth.service
sudo systemctl enable --now brcm43438.service
