# Manually
xset -display :0.0 -dpms # disable Energy Star (DPMS) features (+dpms enables them)
xset -display :0.0 s blank # screen-saver control {blank,noblank,off}
# Add kernel option to set /sys/module/kernel/parameters/consoleblank at boot
#On Raspberry Pi add consoleblank=0 to /boot/cmdline.txt
#On grub add GRUB_CMDLINE_LINUX_DEFAULT="quiet splash consoleblank=0"
