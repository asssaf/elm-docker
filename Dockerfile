FROM alpine:3.15.0

RUN apk add --no-cache nodejs npm

WORKDIR /root

RUN chmod a+x /root

RUN npm install elm-tooling

ADD elm-tooling.json /root

RUN npx --no-install elm-tooling install

ENV PATH=/root/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["elm"]
