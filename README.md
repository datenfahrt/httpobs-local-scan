# httpobs-local-scan Image (alpine:3.9)

i make this image to scan apps in my local environment.

This Image is based on  https://github.com/mozilla/http-observatory 
You can find instructions here: https://github.com/mozilla/http-observatory#the-same-but-with-the-local-cli


## build from source


```
$ git clone https://github.com/datenfahrt/httpobs-local-scan.git .

# amd64

$ docker build -t localscan .

# aarch64

$ docker build -t localscan -f Dockerfile.aarch64 .

# test

$ docker run --rm -it localscan:latest example.com --format report

$ docker run --rm -it localscan:latest mywebpage.local --format report

```

## from docker hub

https://hub.docker.com/r/datenfahrt/httpobs-local-scan

```
$ docker run --rm -it datenfahrt/httpobs-local-scan:latest example.com --format report

# aarch64

$ docker run --rm -it datenfahrt/httpobs-local-scan:aarch64 example.com --format report

```
