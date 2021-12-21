FROM node:10
RUN apt update && apt-get install -y telnet &&  apt-get install -y iputils-ping && apt-get install -y mtr-tiny && apt-get install -y wget && apt-get install -y curl && apt-get install -y netcat && apt-get install -y dnsutils
COPY server.js .
COPY package.json .
COPY / .
RUN npm install
EXPOSE  8080
CMD node server.js
