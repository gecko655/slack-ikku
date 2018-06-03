FROM node:alpine

MAINTAINER gecko655 <aqwsedrft1234@yahoo.co.jp>

WORKDIR /root

COPY index.ls .
COPY package.json .
COPY config.docker.json.ls config.json.ls
RUN npm install


CMD forever start -c "npm start" . && forever logs -f 0
