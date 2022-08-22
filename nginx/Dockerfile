FROM nginx:1.15.0-alpine

#remove default config file
RUN rm /etc/nginx/conf.d/default.conf

#copy my config file to nginx
COPY nginx.conf /etc/nginx/conf.d
