# safesearch-dns

This is the GUI method. For the CLI method (which includes a restrict-xx.conf file) read [this](SafeSearch_DNS_CLI_method.md)


The purpose of this guide and implementation of it, makes it so the likes of Google search is using SafeSearch. This is known to filter explicit search results.

It can also be applied to Bing, DuckDuckGo, Youtube and other searches.

* Note the above guide is more likely to surive any update/s.


----

## Simple Quick Method via Pi-hole Web UI

* Note this simplier guide may break IF IP address changes occur or a Pi-hole update or a major network change possibly.

Login to your Pi-hole, click on Settings > "Local DNS" > "DNS Records" (like shown below).

![image](https://user-images.githubusercontent.com/24641464/163696142-6283e1dd-0bf3-4ba5-936b-497f2b7b773f.png)


----

## safesearch "restrict moderate" google and youtube
```
216.239.38.119 www.google.com

216.239.38.119 www.youtube.com

216.239.38.119 m.youtube.com

216.239.38.119 youtubei.googleapis.com

216.239.38.119 youtube.googleapis.com

216.239.38.119 www.youtube-nocookie.com
```

## safesearch "restrict strict" google and youtube - more strict than moderate
```
216.239.38.120 www.google.com    

216.239.38.120 www.youtube.com

216.239.38.120 m.youtube.com

216.239.38.120 youtubei.googleapis.com

216.239.38.120 youtube.googleapis.com

216.239.38.120 www.youtube-nocookie.com
```

## Other Searches
```
204.79.197.220 bing.com

20.43.109.14 duckduckgo.com

104.18.21.183 pixabay.com
```
