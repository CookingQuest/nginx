FROM nginx:latest
RUN apt-get install -y git  
RUN git clone https://github.com/CookingQuest/nginx.git /repo
COPY /repo/nginx.conf /etc/nginx/nginx.conf
COPY /repo/ssl.conf /etc/nginx/ssl.conf
COPY /repo/proxy.conf /etc/nginx/proxy.conf
RUN rm -rf /repo