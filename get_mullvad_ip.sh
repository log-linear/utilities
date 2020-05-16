#!/bin/sh

#
# Script to pull current Mullvad-provided IPv4 off of soong
#

touch /home/victor/Sync/lore_ip.txt
mullvad status | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}.[0-9]\{1,3\}" \
  > /home/victor/Sync/lore_ip.txt
