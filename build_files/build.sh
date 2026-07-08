#!/bin/bash

set -ouex pipefail

if [ -d /ctx/system_files ]; then
    cp -avf /ctx/system_files/. /
fi

# Install packages
dnf5 install -y \
    tmux \
    htop \
    fastfetch

# Clean dnf metadata before the final image is committed
dnf5 clean all

# Enable systemd services
systemctl enable sshd.service
