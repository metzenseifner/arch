# Setup Raspberry Pi 3 from Arch Linux Tarball

# Setup wlan wpa_supplicant conf
#WLANSSID=""
#WLANPASSWD=""
echo "network={\n  ssid=$WLANSSID\n  $WLANPASSWD\n}" > /etc/wpa_supplicant/wpa_supplicant-wlan0.conf

systemctl enable wpa_supplicant@wlan0.service
systemctl start wpa_supplicant@wlan0.service

# Setup wlan device if non-existant (it was not in my build)
systemctl restart systemd-networkd

# Setup Video
# add
# pacman -Sy --noconfirm mesa libva-mesa-driver opengl-man-pages mesa-vdpau

# Install useful Software
pacman -Sy --noconfirm vim
