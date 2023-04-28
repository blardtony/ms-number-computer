# The minimum environment (Node, php, etc...)
FROM node:10-alpine

# Use RUN to execute classic command as mkdir, cd, etc...
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

# The ENTRYPOINT & CMD let you tell to Docker what to do when the container is mounted
ENTRYPOINT [ "npm", "run", "development" ]