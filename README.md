# docker-challange-nginx-proxy-node
## Description task
In this challenge you will put into practice what we learned about using nginx as a reverse proxy. The main idea is that when a user accesses nginx, it will make a call in our node.js application. This application in turn will add a record in our mysql database, registering a name in the people table.

The node.js application return to nginx should be:

<h1>Full Cycle Rocks!</h1>

- List of names registered in the database.

Generate docker-compose in a way that we just run: docker-compose up -d and everything should be working and available on port: 8080.

Upload everything to a repository and deliver.

------------------------------------------------------------
# Resolution
## links images:
- image node: https://hub.docker.com/repository/docker/davidsretzlaff/node
- image nginx: https://hub.docker.com/repository/docker/davidsretzlaff/nginx
## tutorial how run
- git clone https://github.com/davidsretzlaff/docker-challange-nginx-proxy-node.git
- docker-compose up -d
- access: http:/localhost:8080

