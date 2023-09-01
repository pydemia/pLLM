#!/bin/bash

# See: https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html#ubuntu-lts
# See Also: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#post-installation-actions


sudo apt update && \
    sudo apt install wget

sudo apt install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt update && \
    sudo apt install -y cuda-drivers-520
    #sudo apt install -y cuda-drivers

