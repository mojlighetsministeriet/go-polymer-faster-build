FROM golang:alpine

RUN apk --update add git nodejs-current-npm yarn

COPY goget.sh /
RUN /goget.sh

COPY package.json /
RUN cd / && yarn install --no-lockfile 
