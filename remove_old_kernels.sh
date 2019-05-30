# !/bin/bash

source std_lib.sh

echo "Authorize removing unused kernels with password:"

CURRENT_KERNEL="linux-image-$(uname -r)"
GENERIC_KERNEL="linux-image-generic"
INSTALLED_KERNELS=$(dpkg -l | grep linux-image | awk '{ print $2 }')

for kernel in ${INSTALLED_KERNELS[@]}
do
  if [ "$kernel" != "$CURRENT_KERNEL" ] && [ "$kernel" != "$GENERIC_KERNEL" ]; then
    sudo apt remove --purge $kernel

    if [ $? -ne 0 ]; then
      echo "${RED}Error while trying to purge ${kernel}${NO_COLOR}"
      exit 0
    fi
  fi
done

sudo update-grub2

echo "Reboot? (y/n)"

read answer

if [ "$answer" = "y" ]; then
  sudo reboot
fi
