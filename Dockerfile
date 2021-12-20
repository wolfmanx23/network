FROM alpine:3.6
RUN apt update
RUN apt-get install -y telnet
RUN apt-get install -y iputils-ping
RUN apt-get install -y mtr-tiny
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y netcat
RUN apt-get install -yq dnsutils
