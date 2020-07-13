# Node.js v12 Debian Stretch official container (LTS container as of 2020-07-13)
FROM node:12-stretch

# Setup the container environment
USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app

# Install Sonos Web
RUN npm install sonos-web-cli
RUN ln -s node_modules/sonos-web-cli/index.js sonos-web
RUN ./sonos-web install

# Start Sonos Web
CMD cd /home/node/.sonos-web && node src/server.js
