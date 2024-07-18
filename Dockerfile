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