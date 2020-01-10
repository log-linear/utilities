#!/bin/sh

# Script to pull current Mullvad-provided IPv4
mullvad status | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}.[0-9]\{1,3\}$" > /mnt/1E3AE01D3ADFF02F/Syncthing/Sync/lore_ip.txt
