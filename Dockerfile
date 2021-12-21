FROM node:10
RUN apt update
RUN apt-get install -y telnet
RUN apt-get install -y iputils-ping
RUN apt-get install -y mtr-tiny
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y netcat
RUN apt-get install -yq dnsutils
COPY server.js .
COPY package.json .
COPY / .
RUN npm install
EXPOSE  8080
CMD node server.js
