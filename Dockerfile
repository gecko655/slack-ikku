FROM node

MAINTAINER gecko655 <aqwsedrft1234@yahoo.co.jp>

WORKDIR /root
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y dist-upgrade \
    && apt-get -y autoremove 
RUN apt-get install -y vim

COPY index.ls .
COPY package.json .
COPY config.docker.json.ls config.json.ls
RUN npm install


CMD forever start -c "npm start" . && forever logs -f 0
