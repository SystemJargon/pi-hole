
# Pi-hole vs Adguard Home

In response to [this](https://github.com/AdguardTeam/AdGuardHome/blob/master/README.md#how-does-adguard-home-compare-to-pi-hole) re: someone asked me about this. Here goes my take on it.

It's a personal preference and what works for you and your environment IMO. Pi-hole I like. Pi-hole relies on OpenSource (enough said).

But they are both somewhat different though. Example, Adguard Home at least for Windows, needs to install a "root certificate" to filter HTTPS traffic.

Extract of that prompt in the installer below

```
HTTPS Filtering (protocol).

"It allows AdGuard to block more ads and tracking by filtering encrypted connections.
HTTPS filtering requires installing a root certificate. Learn more about how this works.
```

*Learn more about how this works* takes you to https://kb.adguard.com/en/general/https-filtering.

Software + Root Cert, *my eyes wander*

----

* Bottom line, Pi-hole works at home or in a small business just like AdGuard Home does. 
* I don't need a big chassis server to run it on. I can back it up and start again. I can import lists. The basic function to block Ad's exists on both.
* Pi-hole can for sure be more powerful with regex variations in conjunction with Groups > Clients > VLAN. AGH may since support this.
* I don't need to pay subscription fee's to Disney or xyz VPN/Proxy bullzhit service provider. Don't start me on no-logging non-enterprise-remote VPN's

I may make a repo on AdGuard-Home one day, and just refer to the lists here in this Pi-hole repo maybe? TBC.

----


On the bullet points in the Adguard README file linked above. The AdGuard Team tries to dismiss things as not possible or "too hard". 
If things are too hard, get a Ad<blocker-insert-name-here> browser plug-in, import a list or two. 

Yes a few things in Pi-hole require CLI not GUI configuration to achieve 'certain' things. Some can be done via GUI of Pi-hole.


## Encrypted DNS upstream servers (DNS-over-HTTPS, DNS-over-TLS, DNSCrypt)
Settings > DNS. See DNSSEC along with [pihole-unbound](https://docs.pi-hole.net/guides/dns/unbound/). 
That's just the start if using Cloudflared Service config to the Pi-hole.

## Running as a DNS-over-HTTPS or DNS-over-TLS server
Same as last answer.

## Blocking phishing and malware domains
Simple, use my lists, Firebog or look. Ain't too hard.

## Parental control (blocking adult domains)
Totally possible. Many NSFW and porn lists exist, refer to [this list by me](lists/porn-multi-lists-combo.txt). 
Use Groups if using Pi-hole v5.x (with Group Management). 
I even have a script of time management of domains (like bedtime block youtube) and works with crontab (example given). Refer to [this](time-restrict-block-by-group) for more info.

## SafeSearch DNS
Again, very possible. Refer to [this](safesearch-dns).

## Access settings (choose who can use AGH DNS)
In the real world, you'd have a firewall not rely on the devices ACL only (SPoF). Smart people may use VLAN's and block port 80/443 to the Pi-hole management UI from a Guest / Kid VLAN.

## Running without root-privledges?
I can run pihole as the user pihole (no extra effort required), verifiy by ```ps aux | grep pihole``` or ``` ps -U pihole```

 
