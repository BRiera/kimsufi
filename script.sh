#!/usr/bin/env bash

#
# Update / Upgrade
#

apt -y update
apt -y full-upgrade

#
# Install Sudo
#

apt -y install sudo
