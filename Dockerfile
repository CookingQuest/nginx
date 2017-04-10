FROM nginx:latest
RUN apt-get update && apt-get install -y git  
RUN git clone https://github.com/CookingQuest/nginx.git /repo
RUN mv /repo/* /etc/nginx