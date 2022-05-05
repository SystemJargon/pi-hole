
# Pi-hole vs Adguard Home

This is a over-time mind-dump/spew of AdGuardHome. Mostly opinion based, some facts/testing below.


## Which one, Pi-hole or AdGuardHome???

It's a personal preference and what works for you and your environment. 

Pi-hole I like better in my opinion since Group Management existed. Pi-hole is simply put, 'more config for the tech minded'.

For a non-tech person, in my opinion, AdGuard home will be better suited for ease of simplicity vs Pi-hole.

It is ultimately up to you to decide. Many videos/reviews around the internet exist for both.

 
* Pi-hole works at home or in a small business (if you ain't budgeting other DNS) just like AdGuard Home does. 
* I don't need a big chassis server to run either on in a home environment (well mostly). PoC, a Raspberry Pi. 
* The basic function to block Ad's (and other content if configured) exists on both.
* Pi-hole does have more power-user options buried within it if you want that. But for the average home-user, both are OK.
* I don't need to pay subscription fee's to Disney or xyz VPN/Proxy bullzhit service provider to filter things. 
* Don't start me on apparent 'no-logging' not-your-workplace remote VPN's to rid, ad's and tracking/telemetry. You shouldn't need to pay to rid this junk.
 
----

First time I used Adguard Home via testing on a Raspberry Pi...

Issue of sorts? All clients use Blocklists, not able to specify what 'client' uses what 'list'. (Filters > DNS Blocklists)

I suppose if you have lists just for the adverts,malware,phishing it applies to ALL+ANY Client by Default, that's ok (bar whitelisting example.com domain it may false positive).

But maybe I have a big list of 10,000 entries I only want the client of "kids" to use. The client kids is specified as 'x.x.x.x/24'.
That isn't an option in AGH to say only Client A uses 'example' list. Note: I can get the above to work in Pi-hole via Group Management.


Lastly, how do I export lists/configs/backup the entire AdGuardHome for a future restore in the Web UI? I can't see any such option. 

----

In response to [this](https://github.com/AdguardTeam/AdGuardHome/blob/master/README.md#how-does-adguard-home-compare-to-pi-hole) re: someone asked me about this. Here goes my take on it.
 
On the bullet points in the Adguard README file linked above. The AdGuard Team tries to dismiss things as not possible or "too hard". 
If things are too hard, get a Ad<blocker-insert-name-here> browser plug-in, import a list or two. I guess the same is for someone saying Pi-hole is too hard too.

Yes a few things in Pi-hole require CLI not GUI configuration to achieve 'certain' things. Some can be done via GUI of Pi-hole. 
The same maybe true for *some* aspects of AdguardHome. 


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
I can run pihole as the user pihole (no extra effort required beyond knowing systemd/process), verifiy by ```ps aux | grep pihole``` or ``` ps -U pihole```

 
