FROM bhpratt/network-tools
RUN apt update && apt-get install -y telnet &&  apt-get install -y iputils-ping && apt-get install -y mtr-tiny && apt-get install -y wget && apt-get install -y curl && apt-get install -y netcat && apt-get install -y dnsutils && apt-get install -y traceroute
COPY server.js .
COPY package.json .
COPY / .
RUN npm install
EXPOSE  8080
CMD node server.js
