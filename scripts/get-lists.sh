#!/bin/bash

# update Pi-hole first, uncomment line below if you wish to update pihole FTL, core and web versions.
# pihole -up

# this will PUT ALL lists below into the "default" group.

sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES (' https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_all.list', 1, 'Porn');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt', 1, 'SmartTV');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', 1, 'StevenBlack_Hosts');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt', 1, 'Windows-SpyBlocker');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/elliotwutingfeng/Inversion-DNSBL-Blocklists/main/Google_hostnames.txt', 1, 'DNSBL-Blocklists');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/elliotwutingfeng/GlobalAntiScamOrg-blocklist/main/global-anti-scam-org-scam-urls.txt', 1, 'Global AntiScam URLs');"
sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt', 1, 'AdServers');"



# update gravity as we have new lists now from above
pihole -g

# import using a local list - will add list to the 'default' group in Pi-hole
# cat ~/pihole-lists/blacklistfile.txt | xargs -n1 -I{} sudo sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('{}', 1, 'your-custom-blacklist');"



# uncomment lines below if you wish to download lists and maintain your own versioning and updates
# cd ~
# mkdir pihole-lists && cd pihole-lists
# wget https://raw.githubusercontent.com/elliotwutingfeng/Inversion-DNSBL-Blocklists/main/Google_hostnames.txt
# wget https://raw.githubusercontent.com/elliotwutingfeng/GlobalAntiScamOrg-blocklist/main/global-anti-scam-org-scam-urls.txt
# wget https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt
# wget https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt
# wget https://adaway.org/hosts.txt
# wget https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt
# wget https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
# wget https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_all.list
# wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts


# EOF
