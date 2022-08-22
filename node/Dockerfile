FROM node:15 as builder

WORKDIR /usr/src/app

# RUN apt-get update && apt-get install -y wget
# RUN npm install express --save

RUN npm init -y && \
    npm install express --save  && \
    npm install mysql --save  && \
    npm install

COPY . .

 FROM node:current-alpine3.16

 WORKDIR /usr/src/app

 COPY --from=builder /usr/src/app .

#install dockerize to use container depends
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz


EXPOSE 3000



