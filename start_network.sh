#!/bin/sh
# add this to you sudoers file via visudo
# %sudo   ALL=(ALL) NOPASSWD: /bin/ip addr add *

ip addr | grep 'inet 192.168.50.8' > /dev/null
if [ ! 0 -eq $? ]; then
  echo "Adding IP address ..."
  sudo ip addr add 192.168.50.8/24 broadcast 192.168.50.255 dev eth0 label eth0:1
fi