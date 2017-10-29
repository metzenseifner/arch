#!/bin/sh
# Prints a line, date, and output of "ip a" to some host over ssh.
# Useful to acquire IP addresses of headless machines when DNS is unavailable.
# Requirements: root privileges, wifi connects to ssid automatically e.g. systemd-networkd + wpa_supplicant

user=username
host=whatever.com
ssid=yourwifiname

if [ "$(iwgetid -r)" = "$ssid" ]
then
  while true
  do
    { printf "%0.s-" {1..100} ; printf "\n" ;  date ; ip a ; } | ssh $user@$host "cat >> beacon-$HOSTNAME.txt"
    sleep 60
  done
fi
