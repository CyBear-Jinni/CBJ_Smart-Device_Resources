#!/bin/bash

# Add the directory and configuration file:
mkdir -p /etc/cbjinni/

echo 'Light, ' >/etc/cbjinni/deviceConfigs.txt
#echo 'Blinds, ' > /etc/cbjinni/deviceConfigs.txt  # 'Light,' and 'Light, Light, ' and 'Blinds,' can be used

# Connect device to the wifi
nmcli dev wifi connect wifiSsid password wifiPassword

sudo apt -y update

## Install snapd:
#sudo apt install snapd
#
##sudo snap install network-manager-dart --edge --devmode  # Privet snap for now
#sudo snap install cybear-jinni

sudo apt -y upgrade
