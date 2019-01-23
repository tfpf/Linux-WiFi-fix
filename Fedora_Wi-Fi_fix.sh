#!/bin/bash

# Broadcom Wi-Fi adapter
# 02:00.0 Network controller: Broadcom Limited BCM43142 802.11b/g/n (rev 01)
# above is not compatible with the default Wi-Fi drivers in Fedora 28
# install drivers for Broadcom adapter using this script
# must be done after each system software update

# free and non-free RPM files
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-28.noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-28.noarch.rpm

# kernel-devel for broadcom adapter
sudo dnf install -y broadcom-wl kernel-devel

# determine kernel version
uname -r

# development files for above kernel version
sudo dnf install kernel-devel-`uname -r`
# may not be correct syntax, so find the version first

# no idea what this does
sudo akmods --force --kernel `uname -r` --akmod wl

# activate Wi-Fi driver
sudo modprobe -a wl

