FROM nginx:latest
RUN apt-get update && apt-get install -y git  
RUN git clone https://github.com/CookingQuest/nginx.git /repo
RUN ls /repo  
COPY /repo/nginx.conf /etc/nginx/nginx.conf
COPY /repo/ssl.conf /etc/nginx/ssl.conf
COPY /repo/proxy.conf /etc/nginx/proxy.conf