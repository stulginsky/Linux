FROM nginx

MAINTAINER Yuriy Shikin <shikin@submin.ru>

RUN apt update \
    && apt install -y --no-install-recommends \
    tzdata \
    locales \
    && apt autoremove -y \
    && rm -r /var/cache/apt/archives/* \
    && rm -r /var/lib/apt/*

COPY ./nginx /etc/nginx
COPY ./run_nginx.sh /opt/

RUN locale-gen ru_RU.UTF-8

RUN ln -fs /usr/share/zoneinfo/Europe/Moscow /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
