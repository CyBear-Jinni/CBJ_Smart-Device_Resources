#!/bin/bash

# Add the directory and configuration file:
mkdir -p /etc/cbjinni/

echo 'light, ' >/etc/cbjinni/deviceConfigs.txt
#echo 'blinds, ' > /etc/cbjinni/deviceConfigs.txt  # 'light,' and 'light, light, ' and 'blinds,' can be used

# Connect device to the wifi
nmcli dev wifi connect wifiSsid password wifiPassword

sudo apt -y update

## Install snapd:
sudo apt install snapd

sudo snap install cybear-jinni
sudo snap install security-bear

sudo apt -y upgrade
