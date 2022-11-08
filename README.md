# Pi-hole 

<img src="https://raw.githubusercontent.com/SystemJargon/pi-hole/main/images/pi-hole-image-transp.png" width="100" position="center">
  
<!-- # Pi-hole -->

## About

A trove of content relating to Pi-hole. How-to guides, blocklists, whitelists, regex (regular expression) lists, safesearch, scripts and more. 

Feel to contribute, fork, pull-request, star or otherwise.

### Status

[![Update File](https://github.com/SystemJargon/pi-hole/actions/workflows/update-ticked-hosts.yml/badge.svg)](https://github.com/SystemJargon/filters/actions/workflows/update-ticked-hosts.yml) [![HitCount](https://hits.dwyl.com/systemjargon/pi-hole.svg?style=flat&show=unique)](http://hits.dwyl.com/systemjargon/pi-hole) [![GitHub stars](https://img.shields.io/github/stars/systemjargon/pi-hole)](https://github.com/systemjargon/pi-hole/stargazers) [![GitHub stars](https://img.shields.io/github/forks/systemjargon/pi-hole)](https://github.com/systemjargon/pi-hole/stargazers) [![GitHub stars](https://img.shields.io/github/issues/systemjargon/pi-hole)](https://github.com/systemjargon/pi-hole/stargazers) [![last commit](https://img.shields.io/github/last-commit/SystemJargon/pi-hole.svg)](https://github.com/SystemJargon/pi-hole/commits/master) [![commit activity](https://img.shields.io/github/commit-activity/y/SystemJargon/pi-hole.svg)](https://github.com/SystemJargon/pi-hole/commits/master)

----

### How to add lists?

* Login to Pi-hole
* Adlists
* Where it says: "Add a new adlist" in the input field under "Address", enter a list url there.
* Click "Add" 

----

### False Positives

Which list contains it the domain?

Run ```pihole -q blockeddomain.com``` and it will return the URL of the block list.

You can then optionally allowlist/whitelist this or submit an [issue](https://github.com/SystemJargon/pi-hole/issues/new/choose)

----

### My Links 

* [Pi-hole Lists](https://github.com/SystemJargon/pi-hole/tree/main/lists)

* [My Blocklists Repo](https://github.com/SystemJargon/blocklists)

* [My Allowlists Repo](https://github.com/SystemJargon/allowlists)

* [My AdGuardHome repository](https://github.com/SystemJargon/AdGuardHome)

* [My filters repository](https://github.com/SystemJargon/filters)

----

### Good Recommended Strong lists (if trying to keep it simple). 

All raw link lists below are in HOSTS format & supported in pi-hole

* [Firebog Ticklist](https://raw.githubusercontent.com/SystemJargon/pi-hole/main/firebog-ticklist-hosts.txt)

* [Porn](https://raw.githubusercontent.com/SystemJargon/blocklists/main/lists/categories/adult/porn-multi-lists-combo.txt)

* [OISD](https://dbl.oisd.nl/)

* [StevenBlack Hosts](https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts)

* [Perflyst SmartTV](https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt) or [SmartTV-more](https://raw.githubusercontent.com/SystemJargon/blocklists/main/lists/categories/telemetry/SmartTV-more.txt)

----



### Other links

* [Official website](https://pi-hole.net/)

* [Pi-hole discourse community](https://discourse.pi-hole.net/)

* [CloudFlared (DOH) documentation](https://docs.pi-hole.net/guides/dns/cloudflared/)

* [Unbound documentation](https://docs.pi-hole.net/guides/dns/unbound/)

* [A decent read](https://obutterbach.medium.com/unlock-the-full-potential-of-pihole-e795342e0e36)

<!-- 
* [OISD](https://oisd.nl/)

* [Firebog - Blocklist Collection](https://v.firebog.net/hosts/lists.php)

* [StevenBlack Hosts list](https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts) *Note: May have some false positives, you may need to whitelist some hosts. Uses hosts format.

-->
----

### Sites to find Domain Categories / Verify

* [URL Void](https://www.urlvoid.com)

* [urlscan.io](https://www.urlscan.io)

* [OpenDNS Domain Tagging](https://community.opendns.com/domaintagging/)

There is others of course.
