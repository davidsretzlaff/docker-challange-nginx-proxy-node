FROM node:15 as builder

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y wget
RUN npm install express --save

COPY . .

FROM node:current-alpine3.16

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

EXPOSE 3000

CMD ["node","index.js"]


