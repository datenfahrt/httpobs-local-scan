# httpobs-local-scan Image (alpine:3.9)

i make this image to scan apps in my local environment.

This Image is based on  https://github.com/mozilla/http-observatory 
You can find instructions here: https://github.com/mozilla/http-observatory#the-same-but-with-the-local-cli


## build from source

```
$ git clone https://github.com/datenfahrt/httpobs-local-scan .
$ docker build -t localscan .
$ docker run --rm -it localscan:latest example.com --format report

# or local

$ docker run --rm -it localscan:latest mywebpage.local --format report

```

## from docker hub

https://hub.docker.com/r/datenfahrt/httpobs-local-scan

```
$ docker run --rm -it datenfahrt/httpobs-local-scan:latest example.com --format report
```
