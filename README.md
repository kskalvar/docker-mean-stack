# mean-stack
MEAN Stack using Docker

Please see "Docker Machine and Docker Compose Setup.docx" for installation instructions for Windows

This creates a docker container for node and another for mongo.  You will need to modify the following line in mean/config/env/development.js:

      db: "mongodb://mongo/mean-dev",
