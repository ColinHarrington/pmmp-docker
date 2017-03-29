FROM debian:latest
MAINTAINER Colin Harrington <colin.harrington@gmail.com>

RUN apt-get update && apt-get upgrade
RUN apt-get -y install curl wget

RUN useradd --home /pmmp --create-home --shell /bin/bash pmmp

USER pmmp
WORKDIR /pmmp

RUN wget -q -O - https://get.pmmp.io | bash -s -

EXPOSE 19132
EXPOSE 19132/udp

CMD ["./start.sh", "--no-wizard", "--enable-rcon=on"]