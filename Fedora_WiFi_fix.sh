#!/bin/bash

# Broadcom WiFi adapter
# 02:00.0 Network controller: Broadcom Limited BCM43142 802.11b/g/n (rev 01)

sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-28.noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-28.noarch.rpm

sudo dnf install -y broadcom-wl kernel-devel
uname -r
sudo dnf install kernel-devel-$(uname -r)
sudo akmods --force --kernel $(uname -r) --akmod wl

# Activate WiFi driver.
sudo modprobe -a wl

