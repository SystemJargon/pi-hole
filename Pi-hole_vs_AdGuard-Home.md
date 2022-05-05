
# Pi-hole vs Adguard Home

In response to [this](https://github.com/AdguardTeam/AdGuardHome/blob/master/README.md#how-does-adguard-home-compare-to-pi-hole) re: someone asked me about this. Here goes my take on it.

It's a personal preference and what works for you and your environment IMO. Pi-hole I like better my opinion. More config for the tech minded.

For a non-tech person, maybe AdGuard home will be better suited?

But they are both somewhat different though

----

## Ad-Guard testing on Windows.


Adguard Home at least for Windows, needs to install a "root certificate" to filter HTTPS traffic. 

On a client device like Windows/or say a phone (not dedicated DNS server role), I kinda don't like this. 

When I hear "clients" and "must install a certificate" (Root + CA certs worst example) and it's not for enterprise wi-fi or vpn config's on a corporate device, yeah I frown a little.

But depends on the situation and if it's a must because of technical limitations otherwise, well, so be it.

Extract of that prompt in the installer below

```
HTTPS Filtering (protocol).

"It allows AdGuard to block more ads and tracking by filtering encrypted connections.
HTTPS filtering requires installing a root certificate. Learn more about how this works.
```

*Learn more about how this works* takes you to https://kb.adguard.com/en/general/https-filtering.


----

## Ad-Guard testing on Raspberry Pi

AdGuard Home on a Raspberry Pi. 

I still didn't like it on Windows, the UI and running a client for a client (if that makes sense), yeah nah.

* Pro's / Nice:

Installed it, works, added some lists, added a general and kids network like /24 as a client, so 2x /24 seperately. 

Turned on parental/safesearch obviously for the the kids x.x.x.x/24 network as client, tagged it as user_child.

Turned off and used global settings (and tried vice versa too) with no parental/safesearch obviously for the the general x.x.x.x/24 network as client, tagged it as user_regular.

Added some hosts file, easylist format files in the "DNS Blocklists" menu. It worked. Kinda cool it has rules count :)

Really like the pre-defined "Services" like those for social media and alike. *Yes Pi-hole could do a list > group and target based off a group called "social-media".

----

* Con's / Gripes:

Gripe No 1. All clients use Blocklists, not able to seperate clients to what list.

In Adguard Home, is I can not make a client (or in my case a /24 network) use a specific list only, but exclude another client from using the list/s.

By that I mean lists "all clients end up using" any lists. That's in "Filters > DNS Blocklists" in AGH.

I suppose if you have lists just for the ad's|malware|phishing type non-sense fair game it applies to ALL+ANY Client, bar whitelisting example.com domain etc etc.

Gripe No 2. Services - CDN issue?

But to block Instagram for example... I ticked the service "instagram" for the client, went on the kids wi-fi and device pointing to this DNS server for AGH, I could load IG!!
I had no lists imported to conflict with this setting applied.

So the services, must rely on a "few" known hosts or something that may need tweaks/updates or it's a regional CDN thing for me vs where the authors/team have U.S CDN vs Pacific/Asia CDN nodes - who knows. May AGH team read this one day.


Re above:  

Custom filtering rules, it's great but could accept every type of regex unless I misunderstand that part it says
'/REGEX/:block access to domains matching the specified regular expression.'

It didn't under without quotes, "(^|\.)youtube\.com$" as a test example.


Gripe No 3. Back-up and Export configuration ????

How do I export lists/configs/backup the entire thing for a future restore?? In the AGH GUI that is. Pi-hole offers this export option.

----

* Bottom line, Pi-hole works at home or in a small business just like AdGuard Home does. 
* I don't need a big chassis server to run either on. PoC and beyond on a Raspberry Pi.
* I can back it up and start again. I can import lists. The basic function to block Ad's exists on both.
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

 
