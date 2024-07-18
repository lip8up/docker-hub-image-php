<p align = "center">
Docker-hub-image-php
<br><br>
<img src="https://img.shields.io/docker/cloud/automated/lip8up/php?style=flat-square">
<img src="https://img.shields.io/docker/cloud/build/lip8up/php?style=flat-square">
<img src="https://img.shields.io/docker/pulls/lip8up/php.svg?style=flat-square">
<img src="https://img.shields.io/docker/v/lip8up/php?sort=date&style=flat-square">
<img alt="Docker Image Version (latest semver)" src="https://img.shields.io/docker/v/lip8up/php?sort=semver&style=flat-square">
</p>

# docker-hub-image-php

## Dockerfile

```Dockerfile
FROM phpdockerio/php:8.0-fpm
WORKDIR "/work"

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        php8.0-bcmath \ 
        php8.0-gd \ 
        php8.0-memcached \ 
        php8.0-mysql \
        php8.0-redis \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
```
