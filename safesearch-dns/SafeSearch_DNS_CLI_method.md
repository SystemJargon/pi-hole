# Safe Search DNS - CLI method

Beyond the GUI method.


As per https://discourse.pi-hole.net/t/use-dns-to-force-youtube-into-restricted-mode-and-pi-hole/1996/15 (But I've updated the lists since that was written in July 2018).


Create a file /etc/dnsmasq.d/05-restrict.conf, us a higher number if you already have a 05 entry. Don't use 01 (pihole core) 02 (pihole dhcp) or 03 (pihole wildcards):


Reference: https://support.opendns.com/hc/en-us/articles/227986807-How-to-Enforcing-Google-SafeSearch-YouTube-and-Bing

```
# YouTube
# you can also implement a moderate setting
# replace restrict.youtube.com with/or restrictmoderate.youtube.com

cname=www.youtube.com,restrictmoderate.youtube.com
cname=m.youtube.com,restrictmoderate.youtube.com
cname=youtubei.googleapis.com,restrictmoderate.youtube.com
cname=youtube.googleapis.com,restrictmoderate.youtube.com
cname=www.youtube-nocookie.com,restrictmoderate.youtube.com

# SafeSearch
cname=www.google.com,forcesafesearch.google.com
# add anything here local to your country like 
cname=www.google.co.ca,forcesafesearch.google.com

# Bing Family Filter
cname=www.bing.com,strict.bing.com
cname=bing.com,strict.bing.com

# duckduckgo
cname=www.duckduckgo.com,safe.duckduckgo.com
cname=duckduckgo.com,safe.duckduckgo.com
```

test (for typo's) - should report dnsmasq: syntax check OK.

```
dnsmasq --test
```

edit your hosts file

```
sudo nano /etc/hosts
```

enter the following entries (leave the original content, just add the following)

```
216.239.38.120  restrict.youtube.com
216.239.38.119  restrictmoderate.youtube.com
216.239.38.120  forcesafesearch.google.com
204.79.197.220  strict.bing.com
20.43.109.14  safe.duckduckgo.com
```

restart the pihole service (dnsmasq is masked)

```
sudo service pihole-FTL restart
```

