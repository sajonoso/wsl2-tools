#!/bin/sh

# install with sudo apt-get install docker.io
# add user to group sudo usermod -aG docker <USERNAME>

# add this to your sudoers file via visudo to start service as normal user
# %sudo   ALL=(ALL) NOPASSWD: /usr/sbin/service docker start

# FIXES for service not starting: https://github.com/microsoft/WSL/discussions/4872

# touch /etc/fstab
# update-alternatives --set iptables /usr/sbin/iptables-legacy
# update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

if ! ps -C dockerd > /dev/null; then
  echo "Starting Docker ..."
  sudo service docker start
fi
