FROM node

ENV NODE_ENV development
ENV NODE_PATH /install/node_modules
WORKDIR /home/mean

RUN mkdir /install

# Install Mean.JS packages
ADD package.json /install/package.json
RUN npm install --prefix /install

# install bower
RUN npm install -g bower

EXPOSE 3000
