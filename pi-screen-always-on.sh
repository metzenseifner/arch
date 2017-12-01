# Manually
xset -display :0.0 s -dpms # -dpms disable Energy Star (DPMS) features (+dpms enables them)
xset -display :0.0 s noblank # screen-saver control {blank,noblank,off}
xset -display :0.0 s off
xset -display :0.0 s noblank

# Add kernel option to set /sys/module/kernel/parameters/consoleblank at boot pick 1 of 2
#On Raspberry Pi add consoleblank=0 to /boot/cmdline.txt
#On grub add GRUB_CMDLINE_LINUX_DEFAULT="quiet splash consoleblank=0"
