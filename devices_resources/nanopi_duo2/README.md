# Installation Instructions for the NanoPi Duo2

1. Install the image to sd card.

2. Insert the sd card to the NanoPi Duo2 device and connect it to the computer with USB to TTL Serial Cable/Console Cable.

3. Open the terminal and connect to it with the following command:

'sudo screen /dev/ttyUSB0 115200'

After that it will ask you to choose new password for root.

4. Update the device date with the command 

'sudo date -s "23 Sep 2020 16:01:50"'.

5. Create the file 'setup_new_smart_device.sh' on the device

'nano setup_new_smart_device.sh'

And copy the content from the file 'setup_new_smart_device.sh' in the repository into that file.

The keyboard shortcuts to copy into nano text manager is ctrl+shift+v

And to save and exist press ctrl+x  and than press y to accept.

6. Make the script executable by running the command 

'chmod +x setup_new_smart_device.sh'

7. Run the script as root with the command

'sudo ./setup_new_smart_device.sh'

and enter your password

8. After the device have rebooted update the time again with does too commands (don't forget to change the time in the command to the correct time for you)

'sudo date -s "23 Sep 2020 16:01:50"'

'sudo hwclock -w'

10. Now it should run already but the os armbian for the nanopi duo2 currently does not have good cpu speed configuration by default.

In order to let the device work range of lower speeds follow the following steps.    

'sudo armbian-config' --> System --> CPU --> 480000 -> 1008000