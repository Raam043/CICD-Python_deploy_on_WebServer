FROM nginx
COPY Python/ /usr/share/nginx/html/
EXPOSE 80
