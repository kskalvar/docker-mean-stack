FROM node

ENV PATH /usr/local/npm-build/node_modules/bin:$PATH
ENV NODE_ENV development
ENV NODE_PATH /usr/local/npm-build/node_modules
ENV NPM_CONFIG_PREFIX /usr/local/npm-build/node_modules

WORKDIR /home/mean

# Install Mean.JS Prerequisites
RUN npm install -g bower

# Install Mean.JS packages
ADD package.json /usr/local/npm-build/package.json
RUN npm install --prefix /usr/local/npm-build

# Manually trigger bower. Why doesnt this work via npm install?
ADD .bowerrc /usr/local/npm-build/.bowerrc
ADD bower.json /usr/local/npm-build/bower.json
RUN bower install --config.interactive=false --allow-root --prefix /usr/local/npm-build

EXPOSE 3000
