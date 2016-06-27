# Base image
FROM nginx

#--------------------------------------------------------
# 
# Instal php, supervisor + congifurations
# 
#--------------------------------------------------------
RUN apt-get update && apt-get install -my \
  apt-utils \
  build-essential \
  curl \
  wget

#--------------------------------------------------------
# 
# Nginx conf
# 
#--------------------------------------------------------
RUN rm -f /etc/nginx/conf.d/*
COPY ./nginx/nginx.conf /etc/nginx/conf.d


#--------------------------------------------------------
# 
# Instal NodeJs, Grunt and Bower
# 
#--------------------------------------------------------
#RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh

RUN apt-get update && apt-get install -my \
  nodejs \
  nodejs-legacy \
  npm


# install at $PATH:/usr/local/bin
RUN PATH="$PATH:/usr/local/bin" npm install -g \
  grunt-cli \
  grunt \
  bower \
  pm2

#--------------------------------------------------------
# 
# Install git
# 
#--------------------------------------------------------
RUN apt-get update && apt-get install -my \
  git

RUN git config --global user.name "pabagan"
RUN git config --global user.email "pabagan@gmail.com"
  


#--------------------------------------------------------
# 
# Direct acces for console access. Go Shell
# 
#--------------------------------------------------------
WORKDIR /usr/share/nginx/html/angular-phonecat

#--------------------------------------------------------
# 
# Volumes
# 
#--------------------------------------------------------
VOLUME ["/usr/share/nginx/html", "/etc/nginx/conf.d"]

#--------------------------------------------------------
# 
# Ports
# 
#--------------------------------------------------------
EXPOSE 80 8080 443 9000