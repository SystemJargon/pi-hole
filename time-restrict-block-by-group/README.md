Issue / requested described many times in such places like the below.

Possible since v5.0 with Group Management.

https://discourse.pi-hole.net/t/domain-categories/1989/8



# Part 1 

pihole config in GUI

*	create a group in pihole called "bedtime-restrict" (in this example we will use a kids bedtime for the time).

*	Add a new adlist, comment it as "bedtime-restrict". Example Block TikTok and Youtube list,  [pihole-bedtime-restrict-yt-tiktok.txt](../lists/time-restrict/pihole-bedtime-restrict-yt-tiktok.txt), note you could use whatever list you want of course.

*	add this adlist to be a member of group, "bedtime-restrict"

*	add client subnet i.e. "192.168.16.0/24" kids VLAN, as a member of this group "bedtime-restrict"

*	update gravity via pihole GUI or cli, pihole -g


# Part 2

Example Enable bedtime-restrict group at 10pm until 6am on every day of week from Sunday through Thursday aka school nights.

This mean outside these hours it should NOT block these sites/hosts. 

ssh into your Pi-hole. Then issue the following command/s.

```
sudo crontab -e 
```

Go to the next line after any existing line, then copy and paste the below. 

```
0 22 * * 0-4 sqlite3 /etc/pihole/gravity.db "update 'group' set enabled = 1 where name = 'bedtime-restrict'" >/dev/null 2>&1

0 06 * * 1-5 sqlite3 /etc/pihole/gravity.db "update 'group' set enabled = 0 where name = 'bedtime-restrict'" >/dev/null 2>&1

0 06 * * 1-5 PATH="$PATH:/usr/sbin:/usr/local/bin/" pihole restartdns >/dev/null 2>&1
```

[Online Crontab Generator](https://crontab-generator.org/)
