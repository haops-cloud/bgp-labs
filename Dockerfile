FROM ubuntu:latest

RUN apt update -y && \
    apt upgrade -y

ADD https://github.com/osrg/gobgp/releases/download/v3.26.0/gobgp_3.26.0_linux_amd64.tar.gz \
    gobgp.tar.gz

RUN tar -zxvf gobgp.tar.gz -C /usr/local/bin

CMD [ "gobgpd", "-f", "/bgp.conf"]