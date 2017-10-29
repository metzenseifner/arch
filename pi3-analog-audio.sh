#!/usr/bin/sh

echo "dtparam=audio=on" >> /boot/config.txt
echo "audio_pwm_mode=2" >> /boot/config.txt
echo "disable_audio_dither=1 # remove analog audible background hiss at low volume (did not work for me)" >> /boot/config.txt
echo "#hdmi_drive=1 # 1: DVI (no sound) 2: HDMI (sound if supported and enabled)" >> /boot/config.txt
echo "#amixer cset numid=3 1 # Did not work for me 0=auto 1=analog 2=HDMI (careful, number directly after = should be 2)" >> /boot/config.txt

echo "# Force analog audio" >> /boot/config.txt
echo "hdmi_ignore_edid_audio=1" >> /boot/config.txt
echo "hdmi_force_edid_audio=0" >> /boot/config.txt
