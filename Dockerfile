FROM ubuntu:trusty

RUN apt-get update

RUN apt-get -y install supervisor software-properties-common logrotate curl

RUN curl -sL https://deb.nodesource.com/setup | bash - \
 && apt-get -y install nodejs

RUN add-apt-repository ppa:nginx/stable && apt-get update \
 && apt-get -y install nginx

RUN npm install -g n

RUN n stable

RUN npm install -g yarn --registry=https://registry.npm.taobao.org

RUN yarn config set registry https://registry.npm.taobao.org -g

RUN yarn config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass -g
