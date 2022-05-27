FROM kong:2.8.1

COPY kong.conf /etc/kong/

USER root

COPY ./plugins/proxy-cache-redis /custom-plugins/proxy-cache-redis

WORKDIR /custom-plugins/proxy-cache-redis

RUN luarocks make

USER kong


