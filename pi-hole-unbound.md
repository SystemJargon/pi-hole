# pi-hole-unbound

## Basic install instructions and info for Pi-hole and Unbound are here: 

https://docs.pi-hole.net/guides/dns/unbound/

----

## Fix Logging 
If logging doesn't have permissions to write to unbound's own log, but is logging to syslog see this:

https://askubuntu.com/a/1199592

Answer extract of the link above 


Remove CHROOT config directive and make sure BOTH the log file & parent folder are owned by unbound user:

    sudo chown unbound:unbound /var/log/unbound /var/log/unbound/unbound.log

Still not working for me (or you).
After this I noticed it was still logging to syslog after turning up verbosity to debug. I also noticed kernel showing "apparmor" was logging DENIED's for the unbound log location:

    sudo cat /var/log/syslog | grep DENIED

Example in syslog:

     Dec 30 16:41:48 ip-192-168-1-1 kernel: [ 1368.641789] audit: type=1400 audit(1577724108.624:29): apparmor="DENIED" operation="open" profile="/usr/sbin/unbound" name="/var/log/unbound/unbound.log" pid=2247 comm="unbound" requested_mask="ac" denied_mask="ac" fsuid=112 ouid=112

So, I added a local override to apparmor.d area:

    sudo nano /etc/apparmor.d/local/usr.sbin.unbound

This will create a new /local/ file.
Add this single line to it:

      /var/log/unbound/unbound.log rw,

(Yes, with comma on end) Save.

Reload apparmor entries for unbound:

    sudo apparmor_parser -r /etc/apparmor.d/usr.sbin.unbound

Restart Unbound:

    sudo systemctl restart unbound

Check log:

    sudo tail -f /var/log/unbound/unbound.log
    [1577725445] unbound[2721:0] info: start of service (unbound 1.6.7).

WORKS. If you notice, when syslog logs it, it uses a standard date format. But, Unbound custom logging/non-syslog uses Unix/Epoch time (seconds since 1970) by default. If you wish to have timestamps like syslog, add this to your unbound config and reload service:

    log-time-ascii: yes

If your log location is different, make sure you change all the paths/filenames referenced above.


