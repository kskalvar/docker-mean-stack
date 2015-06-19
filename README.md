# mean-stack
MEAN Stack using Docker

Please see "MEAN Stack Docker Windows 7 Setup" for installation instructions

This creates a docker container for node and another for mongo.  You will need to modify the following line in config/env/development.js:

      db: "mongodb://db/mean-dev",
