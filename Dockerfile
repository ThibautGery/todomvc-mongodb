FROM node:6

RUN mkdir -p /srv/app

EXPOSE 8080

ADD ./package.json /srv/app/
WORKDIR /srv/app

RUN npm install --production

ADD ./ ./

CMD node server.js
