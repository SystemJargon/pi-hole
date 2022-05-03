Strip a url string to just the domain (inclusive of subdomain if applicable).

https://www.google.com/api?=login/someshit/0931750135145/ to be just www.google.com

```
^http:..|^https:..|\/.*
```

Regex validated [here](https://regex101.com/r/7NVd2e/4)
