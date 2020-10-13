# Setting Up Raspberry Pi With CyBear Jinni

<p>1. Install <a href="https://www.raspberrypi.org/downloads">Raspberry Pi image</a> into an sd card (`Raspberry Pi OS` and `Ubuntu Server` where tested, if you choose `Ubuntu Server` you will need to install <a href="https://github.com/WiringPi/WiringPi">wiringpi</a> manually).</p>

<p>2. Insert the sd card into the Raspberry Pi and power it on.</p>

<p>3. Open the terminal.</p>

<p>4. Create the file 'setup_new_smart_device.sh' on the device.

`nano setup_new_smart_device.sh`

Copy the content from the file `setup_new_smart_device.sh` in this folder into that file we created on the Raspberry Pi.

The keyboard shortcuts to copy into nano text manager is ctrl+shift+v .

Now replace the text wifiSsid to your wifi name and wifiPassword to your wifi password in the line

`nmcli dev wifi connect wifiSsid password wifiPassword`

To save and exist press ctrl+x  and than press y to accept.

<p>5. Make the script executable by running the command </p>

`chmod +x setup_new_smart_device.sh`

<p>6. Run the script as root with the command</p>

`sudo ./setup_new_smart_device.sh`

and enter your password.

<p>7. Now it should run</p>

<p>Raspberry Pi is currently not supported as a snap from the snap store.
  
You can download manually old version of the snap <a href="https://drive.google.com/drive/u/1/folders/1eLO8F8KlLK0wjQSqz8zXr_xigyk0xkoh">from here</a> and install  it using the command
  
`sudo snap install --devmode cybear-jinni...`
</p>
