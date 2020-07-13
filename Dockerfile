# Node.js v12 Debian Stretch official container (LTS container as of 2020-07-13)
FROM node:12-stretch

# Install Sonos Web
RUN npm install sonos-web-cli
RUN sonos-web install

# Start Sonos Web
CMD ["sonos-web","start"]
