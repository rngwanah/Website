
FROM nginx:1.15

COPY nginx/nginx-custom.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*

ADD . /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
