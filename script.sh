#!/usr/bin/env bash

#
# Update / Upgrade
#

apt -y update
apt -y full-upgrade

#
# Configure ssh
#

cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sed -i "s|#Port.*|Port 91|gi" /etc/ssh/sshd_config
sed -i "s|PermitRootLogin yes|PermitRootLogin no|gi" /etc/ssh/sshd_config

#
# Install Sudo
#

apt -y install sudo
