FROM node

RUN mkdir -p /code/mean
WORKDIR /code/mean

RUN npm install -g bower
RUN npm install -g express-generator

RUN npm install -g grunt
RUN npm install -g grunt-cli

COPY mean /code/mean
RUN npm install

EXPOSE 3000
