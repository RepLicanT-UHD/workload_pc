FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-focal-x64.tar.gz; \
    tar xf xmrig-6.16.2-focal-x64.tar.gz; \
    cd xmrig-6.16.2; \
    cp xmrig /usr/local/bin/xmrig;

WORKDIR /usr/local/bin

RUN chmod 777 xmrig;

CMD ["/xmrig -a gr -o 23.88.72.40:5555 --tls -u RN86DoccH99PZpx9oMZDVvY2ZMi9578pBV"]
