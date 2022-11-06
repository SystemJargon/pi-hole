# version 5 of pi-hole supported as it no longer has adlist.list like version 4 had.
# sqlite3 commands may require root. If so, use "sudo su" prior to the commands below.
cd /etc/pihole
sqlite3 gravity.db -header -csv 'select * from adlist' > adlist.csv
sqlite3 gravity.db -header -csv 'select * from vw_whitelist' > whitelist.csv
sqlite3 gravity.db -header -csv 'select * from vw_blacklist' > blacklist.csv
