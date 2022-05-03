# Pi-hole Regex Example List

## Where do I add regex in Pi-hole?

Example to blacklist regex (you can whitelist regex too).

![image](https://user-images.githubusercontent.com/24641464/163694862-0ef3b543-1925-4bed-b073-6e610f238d68.png)


----

TLD for Countries, examples

[Country Code Top Level Domain List - Wikipedia](https://en.wikipedia.org/wiki/Country_code_top-level_domain#Lists)
 
```
(\.|^)\.cf
(\.|^)\.ga
(\.|^)\.gq
(\.|^)\.ml
(\.|^)\.nr
(\.|^)\.lk
(\.|^)\.tk
(\.|^)\.pk
(\.|^)\.cn$
(\.|^)\.ua$
(\.|^)\.ru$
(\.|^)\.kp$
(\.|^)\.il$
(\.|^)\.in$
(\.|^)\.ir$
``` 

----

any google API subdomain
```(\.|^)googleapis\.com$```

any zoom.us subdomain
```(\.|^)zoom\.us$```

ads as subdomain
```(\.|^)ads\.$```

----

porn begins with blocking regex
```
(\.|^)(123xmovie|18moviesonline|18porno|18teenporno|2beeg|adult|affect3dstore|ahcdn|alamy|amazporn|amorelie|analviolation|anycash|anyporn|aporntv|area51|babe|bang-movies|beemcams|beemtube|best-free-porn-sites|big7|bigporn|biguz|biguzcams|biguzplayer|bimbolive|blogspot|blumpkintube|bmbsgo|bobs-tube|bongacams|boys|bravoporn|bravospots|bravotube|bubbaporn|bumsen|bumsfilme|cartoonpornvideos|cartoonpornvilla|cartoonprn|cashdorado|cnrs|cum4k|cumlouder|cybersitter|daftsex|ddlgvideo|deepthroatxvideo|deinesexfilme|desiresexxx|deutsche-pornoseiten|dick|ditme|e-hentai|eachporn|eporner|erotic|erotik|exxxtrasmall|familyporner|familypornhd|familystrokes|familyxtube|fap-videos|fapcat|faperoni|faphouse|fapmovz|fellatio|fetish|fick|forlumineoner|freehentaistream|freeones|freexxxporn|fuck|fundorado|fuqer|gay|girl|gizmoxxx|gotporn|hanime|hclips|hd-easyporn|hd-sexfilme|hdefporn|hdpornos|hellcdn|hentai2w|hentaicdn|hentaidude|hentaihaven|hentaiwire|hentaizilla|herzporno|homedoporn|hot-porn-sites|hotporn|hotpremiumxxx|humphole|iceporn|incesto69|incestsex|justindianporn|justindianporn2|kashtanka|katestube|kilovideo|kompoz2|lesbian|liebelib|livejasmin|luscious|meinyouporn|milf|minuporno|morehardporn|motherless|mouthporn|mydirtystories|mypornhere|nakedword|naughtyhentai|nineteentube|nothingtoxic|nudeamateurgirls|nudeclap|nudes|nudezz|ocry|ojiz|onlyindianporn|orgasm|perversefamily|phncdn|pickupforum|playvids|porn|pussy|rajwap|realteengirls|redwap|redwap-cdn|redwap2|saradahentai|schlampen|serviporno|servitubes|sex|shooshtime|sisterporn|spankbang|sperm|squarespace|stripchat|sugarnips|swinger|teenpornvideo|teensnow|thebestfetishsites|theporndude|thepornlist|thepornmap|tipser|tits|topsex-links|truyen-hentai|tubecdn|tubecup|tuboff|tumblr|udvl|upornia|voyeurshd|vporn|vrbangers|vxxxcdn|wankoz|webcam-pornos|wix|wixstatic|wtfpeople|xbabe|xcum|xhamster|xhamster2|xhamsterlive|xhamsterpremium|xhcdn|xhothub|xnxx|xsexvid|xvideos|xvideos-cdn|xvidsporno|xxx|youngpornvideos|your-sexy-dream2|yourbrainonporn|zhentube|zishy)
```


TLD blocking regex
```
(\.)(adult|as|asia|best|bet|bible|bid|biz|br|by|cam|camera|casa|cash|casino|club|cn|co|cz|fun|gay|gold|internal|la|link|mobi|network|one|online|pl|poker|porn|pro|re|review|rip|ro|rocks|ru|sex|sexy|sh|site|space|su|tech|tk|top|tube|vegas|video|vip|vn|vodka|voyage|wang|webcam|win|wine|ws|wtf|xin|xx|xxx|xy|xyz|zonetk)$
```

Youtube blocking regex
```
(\.|^|-)(youtubeeducation|youtube|ytimg|googlevideo|youtubegaming|youtube-nocookie|youtubei|yt3)[.]
```
