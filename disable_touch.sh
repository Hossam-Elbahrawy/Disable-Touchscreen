#!/bin/sh

lsmod | grep touch

#Determine the module name (in my case hid_multitouch)

echo "Creating /etc/modprobe.d/blacklist-hid-multitouch.conf..."

sudo touch /etc/modprobe.d/blacklist-hid-multitouch.conf

sudo chmod 777 /etc/modprobe.d/blacklist-hid-multitouch.conf

sudo echo "#Cracked Screen disabling the kernel module" >> /etc/modprobe.d/blacklist-hid-multitouch.conf

echo "Adding hid_multitouch to blacklist..."

sudo echo "blacklist hid_multitouch" >> /etc/modprobe.d/blacklist-hid-multitouch.conf

echo "Done."

echo " Do you want to reboot your laptop now? (yes/no)"

read choice

if [ "$choice" = "yes" ]
then
  reboot
fi


