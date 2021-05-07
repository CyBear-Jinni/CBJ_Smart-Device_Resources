#!/bin/bash

# Add the directory and configuration file:
mkdir -p /etc/cbjinni/

echo 'Light, ' >/etc/cbjinni/deviceConfigs.txt
#echo 'Blinds, ' > /etc/cbjinni/deviceConfigs.txt  # 'Light,' and 'Light, Light, ' and 'Blinds,' can be used

# Connect device to the wifi
nmcli dev wifi connect wifiSsid password wifiPassword

sudo apt update

## Install snapd:
sudo apt install snapd

sudo snap install cybear-jinni
sudo snap install security-bear

sudo apt upgrade

sudo reboot
