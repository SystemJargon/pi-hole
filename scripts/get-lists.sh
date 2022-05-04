#!/bin/bash

# update Pi-hole first, uncomment line below if you wish to update pihole FTL, core and web versions.
# pihole -up

# this will PUT ALL lists below into the "default" group.

sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://github.com/lz-eng/pi-hole/raw/main/dynamic-big-list/firebog-ticklist.list', 1, 'Porn');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://github.com/lz-eng/pi-hole/raw/main/dynamic-big-list/pihole-blocklist-phish-malware-nsfw.txt', 1, 'SmartTV');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', 1, 'StevenBlack_Hosts');"



# update gravity as we have new lists now from above
pihole -g

# import using a local list - will add list to the 'default' group in Pi-hole
# cat ~/pihole-lists/blacklistfile.txt | xargs -n1 -I{} sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('{}', 1, 'your-custom-blacklist');"



# uncomment lines below if you wish to download lists and maintain your own versioning and updates
# cd ~
# mkdir pihole-lists && cd pihole-lists
# wget https://github.com/lz-eng/pi-hole/raw/main/dynamic-big-list/firebog-ticklist.list
# wget https://github.com/lz-eng/pi-hole/raw/main/dynamic-big-list/pihole-blocklist-phish-malware-nsfw.txt
# wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

# EOF
