FROM nginx:stable-alpine3.23

COPY react/dist /usr/share/nginx/html/
COPY nginx /etc/nginx/conf.d/
COPY certs /etc/nginx/certs/